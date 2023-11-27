using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	/// <summary>
	/// context required for each instance of script execution
	/// </summary>
	public class VMScriptExecutionContext
	{
		// some names are kept short when accessed often
		public NewGamemakerObject Self;
		public readonly Stack<object> Stack = new();
		public readonly Dictionary<string, object> Locals = new();
		public object ReturnValue = null;
	}

	public static class VMExecuter
	{
		public static Stack<NewGamemakerObject> EnvironmentStack = new(); // maybe see if we can make this a local variable at some point

		public static object ExecuteScript(VMScript script, NewGamemakerObject obj)
		{
			Debug.Log($"Executing script {script.name} ...");

			var ctx = new VMScriptExecutionContext();
			ctx.Self = obj;
			foreach (var item in script.LocalVariables)
			{
				ctx.Locals.Add(item, null);
			}

			// Make the current object the current instance
			EnvironmentStack.Push(obj);

			// Execute the first block, which will execute the next needed block, and so on.
			var zeroBlock = script.Blocks[0];
			ExecuteBlock(script, zeroBlock, ctx);

			// Current object has finished executing, remove from stack
			EnvironmentStack.Pop();

			return ctx.ReturnValue;
		}

		public static void ExecuteBlock(VMScript script, VMScriptBlock block, VMScriptExecutionContext ctx)
		{
			foreach (var instruction in block.Instructions)
			{
				var hasJumped = ExecuteInstruction(script, instruction, ctx);

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
				ExecuteBlock(script, nextBlock, ctx);
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

		// returns true when jumping or when error. maybe should use exceptions instead? since Convert can throw
		public static bool ExecuteInstruction(VMScript script, VMScriptInstruction instruction, VMScriptExecutionContext ctx)
		{
			switch (instruction.Opcode)
			{
				case VMOpcode.ADD:
					// TODO: use typeOne when popping and typeTwo when pushing. can we have Convert just use VMType directly?
					ctx.Stack.Push(Convert<double>(ctx.Stack.Pop()) + Convert<double>(ctx.Stack.Pop()));
					break;
				case VMOpcode.B:
				{
					if (instruction.JumpToEnd)
					{
						return true;
					}

					ExecuteBlock(script, script.Blocks[instruction.IntData], ctx);
					break;
				}
				case VMOpcode.BT:
				{
					var boolValue = Convert<bool>(ctx.Stack.Pop());
					if (!boolValue)
					{
						break;
					}

					if (instruction.JumpToEnd)
					{
						return true;
					}

					ExecuteBlock(script, script.Blocks[instruction.IntData], ctx);
					break;
				}
				case VMOpcode.BF:
				{
					var boolValue = Convert<bool>(ctx.Stack.Pop());
					if (boolValue)
					{
						break;
					}

					if (instruction.JumpToEnd)
					{
						return true;
					}

					ExecuteBlock(script, script.Blocks[instruction.IntData], ctx);
					break;
				}
				case VMOpcode.CMP:
					var secondNumber = Convert<double>(ctx.Stack.Pop());
					var firstNumber = Convert<double>(ctx.Stack.Pop());
					switch (instruction.Comparison)
					{
						case VMComparison.LT:
							ctx.Stack.Push(firstNumber < secondNumber);
							break;
						case VMComparison.LTE:
							ctx.Stack.Push(firstNumber <= secondNumber);
							break;
						case VMComparison.EQ:
							ctx.Stack.Push(firstNumber == secondNumber);
							break;
						case VMComparison.NEQ:
							ctx.Stack.Push(firstNumber != secondNumber);
							break;
						case VMComparison.GTE:
							ctx.Stack.Push(firstNumber >= secondNumber);
							break;
						case VMComparison.GT:
							ctx.Stack.Push(firstNumber > secondNumber);
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
							ctx.Stack.Push(instruction.IntData);
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
									var index = Convert<int>(ctx.Stack.Pop());
									ctx.Stack.Push(VariableResolver.GetGlobalArrayIndex(variableName[7..], index));
									//Debug.Log($" - {VariableResolver.GetGlobalArrayIndex(variableName[7..], arrayIndex)}");
								}
								else
								{
									ctx.Stack.Push(VariableResolver.GetGlobalVariable(variableName[7..]));
									//Debug.Log($" - {VariableResolver.GetGlobalVariable(variableName[7..])}");
								}
							}
							else if (isLocal)
							{
								if (indexingArray)
								{
									var index = Convert<int>(ctx.Stack.Pop());
									ctx.Stack.Push(((Dictionary<int, object>)ctx.Locals[variableName[6..]])[index]);
									//Debug.Log($" - {((Dictionary<int, object>)ctx.Locals[variableName[6..]])[arrayIndex]}");
								}
								else
								{
									ctx.Stack.Push(ctx.Locals[variableName[6..]]);
									//Debug.Log($" - {ctx.Locals[variableName[6..]]}");
								}
							}
							else
							{
								Debug.LogError($"Don't know how to push variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
							}
							break;
						case VMType.b:
							//Debug.Log($"Pushing {instruction.BoolData}");
							ctx.Stack.Push(instruction.BoolData);
							break;
						case VMType.d:
							//Debug.Log($"Pushing {instruction.DoubleData}");
							ctx.Stack.Push(instruction.DoubleData);
							break;
						case VMType.e:
							// i think this is just an int always???
							//Debug.Log($"Pushing {instruction.IntData}");
							ctx.Stack.Push(instruction.IntData);
							break;
						case VMType.s:
							var indexOfLast = instruction.StringData.LastIndexOf('@');
							var stringValue = instruction.StringData.Substring(0, indexOfLast);
							stringValue = stringValue[1..^1];
							//Debug.Log($"Pushing {stringValue}");
							ctx.Stack.Push(stringValue);
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
							var index = Convert<int>(ctx.Stack.Pop());
							var unknown = ctx.Stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = ctx.Stack.Pop();
							//Debug.Log($"Set global {variableName[7..]} index {index} to {value}");
							VariableResolver.SetGlobalArrayIndex(variableName[7..], index, value);
						}
						else
						{
							var value = ctx.Stack.Pop();
							//Debug.Log($"Set global {variableName[7..]} to {value}");
							VariableResolver.SetGlobalVariable(variableName[7..], value);
						}
					}
					else if (isLocal)
					{
						if (indexingArray)
						{
							var index = Convert<int>(ctx.Stack.Pop());
							var unknown = ctx.Stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = ctx.Stack.Pop();

							if (ctx.Locals[variableName[6..]] == null)
							{
								ctx.Locals[variableName[6..]] = new Dictionary<int, object>();
							}

							//Debug.Log($"Set {variableName[6..]} index {index} to {value}");
							((Dictionary<int, object>)ctx.Locals[variableName[6..]])[index] = value;
						}
						else
						{
							var value = ctx.Stack.Pop();
							//Debug.Log($"Set {variableName[6..]} to {value}");
							ctx.Locals[variableName[6..]] = value;
						}
					}
					else
					{
						Debug.LogError($"Don't know how to pop to variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
					}

					break;
				}
				case VMOpcode.RET:
					ctx.ReturnValue = ctx.Stack.Pop();
					return true;
				case VMOpcode.CONV:
					var toType = GetType(instruction.TypeTwo);
					ctx.Stack.Push(Convert(ctx.Stack.Pop(), toType));
					break;
				case VMOpcode.POPZ:
					ctx.Stack.Pop();
					break;
				case VMOpcode.PUSHI:
					ctx.Stack.Push(instruction.IntData);
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
							arguments.ArgumentArray[instruction.FunctionArgumentCount - 1 - i] = ctx.Stack.Pop();
						}

						ctx.Stack.Push(builtInFunction(arguments));

						break;
					}

					if (ScriptResolver.Instance.NameToScript.TryGetValue(instruction.FunctionName, out var scriptName))
					{
						Debug.Log($"Calling script {instruction.FunctionName} with {instruction.FunctionArgumentCount} arguments");
						ctx.Stack.Push(ExecuteScript(scriptName, EnvironmentStack.Peek()));
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
