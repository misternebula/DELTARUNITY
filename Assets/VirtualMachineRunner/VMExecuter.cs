using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public static class VMExecuter
	{
		public static Stack<NewGamemakerObject> EnvironmentStack = new();

		private static object returnValue = null;
		private static Dictionary<string, object> _localVariables = new();

		public static object ExecuteScript(VMScript script, NewGamemakerObject obj)
		{
			Debug.Log($"Executing script {script.name} ...");

			returnValue = null;
			var dataStack = new Stack<object>();

			_localVariables = new Dictionary<string, object>();
			foreach (var item in script.LocalVariables)
			{
				_localVariables.Add(item, null);
			}

			// Make the current object the current instance
			EnvironmentStack.Push(obj);

			// Execute the first block, which will execute the next needed block, and so on.
			var zeroBlock = script.Blocks[0];
			ExecuteBlock(script, zeroBlock, dataStack);

			// Current object has finished executing, remove from stack
			EnvironmentStack.Pop();

			return returnValue;
		}

		public static void ExecuteBlock(VMScript script, VMScriptBlock block, Stack<object> stack)
		{
			foreach (var instruction in block.Instructions)
			{
				var hasJumped = ExecuteInstruction(script, instruction, stack);

				if (hasJumped)
				{
					// ExecuteBlock was called by the instruction, so dont try finding the next one.
					return;
				}
			}

			// We didn't jump to a different block, so find the next one!
			var nextId = block.ID + 1;
			var nextBlock = script.Blocks.SingleOrDefault(x => x.ID == nextId);
			if (nextBlock != default)
			{
				ExecuteBlock(script, nextBlock, stack);
			}

			return;
		}

		private static Type GetType(VMType type)
		{
			switch (type)
			{
				case VMType.s:
					return typeof(string);
				case VMType.i:
					return typeof(int);
				case VMType.b:
					return typeof(bool);
				case VMType.d:
					return typeof(double);
				case VMType.e:
				case VMType.v:
				default:
					return typeof(object);
			}
		}

		public static T Convert<T>(object obj) => (T)Convert(obj, Activator.CreateInstance(typeof(T), null).GetType());

		// TODO nebula: double check this matches gamemaker, idk
		public static object Convert(object obj, Type type)
		{
			if (type == typeof(object))
			{
				return obj;
			}

			if (obj.GetType() == type)
			{
				return obj;
			}

			if (obj is string s)
			{
				if (type == typeof(int))
				{
					return int.Parse(s);
				}

				if (type == typeof(double))
				{
					return double.Parse(s);
				}
				
				if (type == typeof(bool))
				{
					return bool.Parse(s);
				}

			}
			else if (obj is int i)
			{
				if (type == typeof(bool))
				{
					return i == 1;
				}

				if (type == typeof(double))
				{
					return (double)i;
				}

				if (type == typeof(string))
				{
					return i.ToString();
				}
			}
			else if (obj is bool b)
			{
				if (type == typeof(int))
				{
					return (int)(b ? 0 : 1);
				}

				if (type == typeof(double))
				{
					return (double)(b ? 0 : 1);
				}

				if (type == typeof(string))
				{
					return b.ToString();
				}
			}
			else if (obj is double d)
			{
				if (type == typeof(bool))
				{
					return d > 0.5;
				}

				if (type == typeof(int))
				{
					return (int)d;
				}

				if (type == typeof(string))
				{
					return d.ToString();
				}
			}

			Debug.LogError($"Can't convert {obj} ({obj.GetType().FullName}) to {type}");
			return default;
		}

		public static bool ExecuteInstruction(VMScript script, VMScriptInstruction instruction, Stack<object> stack)
		{
			switch (instruction.Opcode)
			{
				case VMOpcode.ADD:
					stack.Push(Convert<double>(stack.Pop()) + Convert<double>(stack.Pop()));
					break;
				case VMOpcode.B:
				{
					if (instruction.JumpToEnd)
					{
						return true;
					}

					ExecuteBlock(script, script.Blocks[instruction.IntData], stack);
					break;
				}
				case VMOpcode.BT:
				{
					var boolValue = Convert<bool>(stack.Pop());
					if (!boolValue)
					{
						break;
					}

					if (instruction.JumpToEnd)
					{
						return true;
					}

					ExecuteBlock(script, script.Blocks[instruction.IntData], stack);
					break;
				}
				case VMOpcode.BF:
				{
					var boolValue = Convert<bool>(stack.Pop());
					if (boolValue)
					{
						break;
					}

					if (instruction.JumpToEnd)
					{
						return true;
					}

					ExecuteBlock(script, script.Blocks[instruction.IntData], stack);
					break;
				}
				case VMOpcode.CMP:
					var secondNumber = Convert<double>(stack.Pop());
					var firstNumber = Convert<double>(stack.Pop());
					switch (instruction.Comparison)
					{
						case VMComparison.LT:
							stack.Push(firstNumber < secondNumber);
							break;
						case VMComparison.LTE:
							stack.Push(firstNumber <= secondNumber);
							break;
						case VMComparison.EQ:
							stack.Push(firstNumber == secondNumber);
							break;
						case VMComparison.NEQ:
							stack.Push(firstNumber != secondNumber);
							break;
						case VMComparison.GTE:
							stack.Push(firstNumber >= secondNumber);
							break;
						case VMComparison.GT:
							stack.Push(firstNumber > secondNumber);
							break;
						case VMComparison.None:
						default:
							throw new ArgumentOutOfRangeException();
					}
					break;
				case VMOpcode.PUSHGLB:
				case VMOpcode.PUSHLOC:
				case VMOpcode.PUSHBLTN:
				case VMOpcode.PUSH:
				{
					switch (instruction.TypeOne)
					{
						case VMType.i:
							//Debug.Log($"Pushing {instruction.IntData}");
							stack.Push(instruction.IntData);
							break;
						case VMType.v:
							//Debug.Log($"Pushing variable {instruction.StringData}");
							var variableName = instruction.StringData;
							var indexingArray = variableName.StartsWith("[array]");
							if (indexingArray)
							{
								variableName = variableName[7..]; // skip [array]
							}

							var isGlobal = variableName.StartsWith("global.");
							var isLocal = variableName.StartsWith("local.");
							var isSelf = variableName.StartsWith("self.");

							if (isGlobal)
							{
								if (indexingArray)
								{
									var index = Convert<int>(stack.Pop());
									stack.Push(VariableResolver.GetGlobalArrayIndex(variableName[7..], index));
									//Debug.Log($" - {VariableResolver.GetGlobalArrayIndex(variableName[7..], arrayIndex)}");
								}
								else
								{
									stack.Push(VariableResolver.GetGlobalVariable(variableName[7..]));
									//Debug.Log($" - {VariableResolver.GetGlobalVariable(variableName[7..])}");
								}
							}
							else if (isLocal)
							{
								if (indexingArray)
								{
									var index = Convert<int>(stack.Pop());
									stack.Push(((Dictionary<int, object>)_localVariables[variableName[6..]])[index]);
									//Debug.Log($" - {((Dictionary<int, object>)_localVariables[variableName[6..]])[arrayIndex]}");
								}
								else
								{
									stack.Push(_localVariables[variableName[6..]]);
									//Debug.Log($" - {_localVariables[variableName[6..]]}");
								}
							}
							else
							{
								Debug.LogError($"Don't know how to push variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
							}
							break;
						case VMType.b:
							//Debug.Log($"Pushing {instruction.BoolData}");
							stack.Push(instruction.BoolData);
							break;
						case VMType.d:
							//Debug.Log($"Pushing {instruction.DoubleData}");
							stack.Push(instruction.DoubleData);
							break;
						case VMType.e:
							// i think this is just an int always???
							//Debug.Log($"Pushing {instruction.IntData}");
							stack.Push(instruction.IntData);
							break;
						case VMType.s:
							var indexOfLast = instruction.StringData.LastIndexOf('@');
							var stringValue = instruction.StringData.Substring(0, indexOfLast);
							stringValue = stringValue[1..^1];
							//Debug.Log($"Pushing {stringValue}");
							stack.Push(stringValue);
							break;
						case VMType.None:
						default:
							throw new ArgumentOutOfRangeException();
					}

					break;
				}
				case VMOpcode.POP:
				{
					var variableName = instruction.StringData;
					var indexingArray = variableName.StartsWith("[array]");
					if (indexingArray)
					{
						variableName = variableName[7..]; // skip [array]
					}

					var isGlobal = variableName.StartsWith("global.");
					var isLocal = variableName.StartsWith("local.");
					var isSelf = variableName.StartsWith("self.");
					if (isGlobal)
					{
						if (indexingArray)
						{
							var index = Convert<int>(stack.Pop());
							var unknown = stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = stack.Pop();
							//Debug.Log($"Set global {variableName[7..]} index {index} to {value}");
							VariableResolver.SetGlobalArrayIndex(variableName[7..], index, value);
						}
						else
						{
							var value = stack.Pop();
							//Debug.Log($"Set global {variableName[7..]} to {value}");
							VariableResolver.SetGlobalVariable(variableName[7..], value);
						}
					}
					else if (isLocal)
					{
						if (indexingArray)
						{
							var index = Convert<int>(stack.Pop());
							var unknown = stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = stack.Pop();

							if (_localVariables[variableName[6..]] == null)
							{
								_localVariables[variableName[6..]] = new Dictionary<int, object>();
							}

							//Debug.Log($"Set {variableName[6..]} index {index} to {value}");
							((Dictionary<int, object>)_localVariables[variableName[6..]])[index] = value;
						}
						else
						{
							var value = stack.Pop();
							//Debug.Log($"Set {variableName[6..]} to {value}");
							_localVariables[variableName[6..]] = value;
						}
					}
					else
					{
						Debug.LogError($"Don't know how to pop to variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
					}

					break;
				}
				case VMOpcode.RET:
					returnValue = stack.Pop();
					return true;
				case VMOpcode.CONV:
					var toType = GetType(instruction.TypeTwo);
					stack.Push(Convert(stack.Pop(), toType));
					break;
				case VMOpcode.POPZ:
					stack.Pop();
					break;
				case VMOpcode.PUSHI:
					stack.Push(instruction.IntData);
					break;
				case VMOpcode.CALL:
					if (ScriptResolver.Instance.BuiltInFunctions.TryGetValue(instruction.FunctionName, out var builtInFunction))
					{
						var arguments = new Arguments
						{
							Context = EnvironmentStack.Peek(),
							ArgumentArray = new object[instruction.FunctionArgumentCount]
						};

						for (var i = 0; i < instruction.FunctionArgumentCount; i++)
						{
							arguments.ArgumentArray[instruction.FunctionArgumentCount - 1 - i] = stack.Pop();
						}

						stack.Push(builtInFunction(arguments));

						break;
					}

					if (ScriptResolver.Instance.NameToScript.TryGetValue(instruction.FunctionName, out var scriptName))
					{
						Debug.Log($"Calling script {instruction.FunctionName} with {instruction.FunctionArgumentCount} arguments");
						stack.Push(ExecuteScript(scriptName, EnvironmentStack.Peek()));
						break;
					}

					Debug.LogError($"Can't resolve script {instruction.FunctionName} !");
					Debug.Break();
					return true;
				case VMOpcode.MUL:
				case VMOpcode.DIV:
				case VMOpcode.REM:
				case VMOpcode.MOD:
				case VMOpcode.SUB:
				case VMOpcode.AND:
				case VMOpcode.OR:
				case VMOpcode.XOR:
				case VMOpcode.NEG:
				case VMOpcode.NOT:
				case VMOpcode.SHL:
				case VMOpcode.SHR:
				case VMOpcode.DUP:
				case VMOpcode.EXIT:
				case VMOpcode.PUSHENV:
				case VMOpcode.POPENV:
				case VMOpcode.CALLV:
				case VMOpcode.BREAK:
				default:
					Debug.LogError($"Unknown opcode {instruction.Opcode}");
					Debug.Break();
					return true;
			}

			return false;
		}
	}
}
