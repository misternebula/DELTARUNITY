using System;
using System.Collections.Generic;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	/// <summary>
	/// context required for each instance of script execution
	/// </summary>
	public class VMScriptExecutionContext
	{
		public NewGamemakerObject Self;
		public ObjectDefinition ObjectDefinition;
		public readonly Stack<object> Stack = new();
		public readonly Dictionary<string, object> Locals = new();
		public object ReturnValue = null;
		public EventType EventType;
		public int EventIndex;
	}

	public static class VMExecuter
	{
		public static Stack<VMScriptExecutionContext> EnvironmentStack = new();

		public static object ExecuteScript(VMScript script, NewGamemakerObject obj, ObjectDefinition objectDefinition = null, EventType eventType = EventType.None, int eventIndex = 0, Arguments arguments = null)
		{
			var ctx = new VMScriptExecutionContext
			{
				Self = obj,
				ObjectDefinition = objectDefinition,
				EventType = eventType,
				EventIndex = eventIndex
			};

			foreach (var item in script.LocalVariables)
			{
				ctx.Locals.Add(item, null);
			}

			if (arguments != null)
			{
				ctx.Locals["arguments"] = arguments.ArgumentArray;
			}

			// Make the current object the current instance
			EnvironmentStack.Push(ctx);

			// Execute the first block, which will execute the next needed block, and so on.
			/*var zeroBlock = script.Blocks[0];
			ExecuteBlock(script, zeroBlock, ctx);*/

			// Setup variables to start execution at label [0]
			var instructionIndex = script.Labels[0]; // this *should* always be 0, but idk.

			while (true)
			{
				var (executionResult, data) = ExecuteInstruction(script, script.Instructions[instructionIndex], ctx);

				if (executionResult == ExecutionResult.Failed)
				{
					Debug.LogError($"Execution of {script.Instructions[instructionIndex].Raw} failed.");
					Debug.Break();
					break;
				}

				if (executionResult == ExecutionResult.Success)
				{
					if (instructionIndex == script.Instructions.Count - 1)
					{
						// script finished!
						break;
					}

					instructionIndex++;
					continue;
				}

				if (executionResult == ExecutionResult.JumpedToEnd)
				{
					break;
				}

				if (executionResult == ExecutionResult.JumpedToLabel)
				{
					var label = (int)data;
					instructionIndex = script.Labels[label];
					continue;
				}

				if (executionResult == ExecutionResult.ReturnedValue)
				{
					ctx.ReturnValue = data;
					break;
				}
			}

			// Current object has finished executing, remove from stack
			EnvironmentStack.Pop();

			return ctx.ReturnValue;
		}

		/*public static void ExecuteBlock(VMScript script, VMScriptBlock block, VMScriptExecutionContext ctx)
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
		}*/

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

		public static T Convert<T>(object obj)
		{
			if (typeof(T) != typeof(object))
			{
				return (T)Convert(obj, typeof(T));
			}
			else
			{
				return (T)Convert(obj, Activator.CreateInstance(typeof(T), null).GetType());
			}
		}

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
				// not sure how to implement numeric -> string properly

				// "numbers, minus signs, decimal points and exponential parts in the string are taken into account,
				// while other characters (such as letters) will cause an error to be thrown."

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
					return bool.Parse(s); // dunno if "true" or "false" should convert properly, since bools are just ints?
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
					return i.ToString(); // not sure if positive numbers need to have a "+" in front?
				}
			}
			else if (obj is bool b)
			{
				if (type == typeof(int))
				{
					return (int)(b ? 1 : 0);
				}

				if (type == typeof(double))
				{
					return (double)(b ? 1 : 0);
				}

				if (type == typeof(string))
				{
					return b ? "1" : "0"; // GM represents bools as integers
				}
			}
			else if (obj is double d)
			{
				if (type == typeof(bool))
				{
					return d > 0.5; // https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Variable_Functions/bool.htm
				}

				if (type == typeof(int))
				{
					return (int)d;
				}

				if (type == typeof(string))
				{
					var isInt = Math.Abs(d % 1) <= (double.Epsilon * 100);
					// https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Strings/string.htm
					return isInt ? d.ToString("0") : (object)d.ToString("0.00");
				}
			}

			Debug.LogError($"Can't convert {obj} ({obj.GetType().FullName}) to {type}");
			return default;
		}

		// BUG: throws sometimes instead of returning ExecutionResult.Failure
		public static (ExecutionResult result, object data) ExecuteInstruction(VMScript script, VMScriptInstruction instruction, VMScriptExecutionContext ctx)
		{
			switch (instruction.Opcode)
			{
				case VMOpcode.CHKINDEX:
					// don't really know what this does.
					break;
				case VMOpcode.NOT:
					switch (instruction.TypeOne)
					{
						case VMType.b:
							var value = Convert<bool>(ctx.Stack.Pop());
							ctx.Stack.Push(!value);
							break;
						default:
							Debug.LogError($"Don't know how to NOT {instruction.TypeOne}");
							break;
					}
					break;
				case VMOpcode.ADD:
					var valTwo = ctx.Stack.Pop();
					var valOne = ctx.Stack.Pop();

					var hasString = instruction.TypeOne == VMType.s || instruction.TypeTwo == VMType.s;
					var variableIsString = (instruction.TypeOne == VMType.v && valOne is string) || (instruction.TypeTwo == VMType.v && valTwo is string);

					// strings need to concat
					if (hasString || variableIsString)
					{
						var stringOne = Convert<string>(valOne);
						var stringTwo = Convert<string>(valTwo);
						ctx.Stack.Push(stringOne + stringTwo);
						break;
					}

					// technically should convert using TypeOne and TypeTwo, but later instructions convert anyway so it's fine
					ctx.Stack.Push(Convert<double>(valOne) + Convert<double>(valTwo));
					break;
				case VMOpcode.B:
				{
					if (instruction.JumpToEnd)
					{
						return (ExecutionResult.JumpedToEnd, null);
					}

					return (ExecutionResult.JumpedToLabel, instruction.IntData);
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
						return (ExecutionResult.JumpedToEnd, null);
					}

					return (ExecutionResult.JumpedToLabel, instruction.IntData);
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
						return (ExecutionResult.JumpedToEnd, null);
					}

					return (ExecutionResult.JumpedToLabel, instruction.IntData);
				}
				case VMOpcode.CMP:

					var second = ctx.Stack.Pop();
					var first = ctx.Stack.Pop();

					if (second is bool or int or double && first is bool or int or double)
					{
						var firstNumber = Convert<double>(first);
						var secondNumber = Convert<double>(second);
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
					}
					else
					{
						//Debug.Log($" - isnt numeric");
						if (instruction.Comparison == VMComparison.EQ)
						{
							//Debug.Log($"    - EQ : {first == second}");
							ctx.Stack.Push(first == second);
						}
						else if (instruction.Comparison == VMComparison.NEQ)
						{
							//Debug.Log($"    - NEQ : {first != second}");
							ctx.Stack.Push(first != second);
						}
						else
						{
							// ??? no idea if this is what GM does
							ctx.Stack.Push(false);
						}
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
									//Debug.Log($" - {VariableResolver.GetGlobalArrayIndex(variableName[7..], index)}");
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
									ctx.Stack.Push(((Dictionary<int, object>)EnvironmentStack.Peek().Locals[variableName[6..]])[index]);
									//Debug.Log($" - {((Dictionary<int, object>)ctx.Locals[variableName[6..]])[index]}");
								}
								else
								{
									ctx.Stack.Push(EnvironmentStack.Peek().Locals[variableName[6..]]);
									//Debug.Log($" - {ctx.Locals[variableName[6..]]}");
								}
							}
							else if (isSelf)
							{
								if (indexingArray)
								{
									var index = Convert<int>(ctx.Stack.Pop());
									ctx.Stack.Push(((Dictionary<int, object>)VariableResolver.GetSelfVariable(EnvironmentStack.Peek(), variableName[5..]))[index]);
								}
								else
								{
									ctx.Stack.Push(VariableResolver.GetSelfVariable(EnvironmentStack.Peek(), variableName[5..]));
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
					else if (isSelf)
					{
						if (indexingArray)
						{
							var index = Convert<int>(ctx.Stack.Pop());
							var unknown = ctx.Stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = ctx.Stack.Pop();

							((Dictionary<int, object>)VariableResolver.GetSelfVariable(ctx, variableName[5..]))[index] = value;
						}
						else
						{
							var value = ctx.Stack.Pop();
							VariableResolver.SetSelfVariable(ctx, variableName[5..], value);
						}
					}
					else
					{
						Debug.LogError($"Don't know how to pop to variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
					}

					break;
				}
				case VMOpcode.RET:
					return (ExecutionResult.ReturnedValue, ctx.Stack.Pop());
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
					var arguments = new Arguments
					{
						Context = EnvironmentStack.Peek(),
						ArgumentArray = new object[instruction.FunctionArgumentCount]
					};

					for (var i = 0; i < instruction.FunctionArgumentCount; i++)
					{
						arguments.ArgumentArray[i] = ctx.Stack.Pop();
					}

					if (ScriptResolver.Instance.BuiltInFunctions.TryGetValue(instruction.FunctionName, out var builtInFunction))
					{
						ctx.Stack.Push(builtInFunction(arguments));
						break;
					}

					if (ScriptResolver.Instance.NameToScript.TryGetValue(instruction.FunctionName, out var scriptName))
					{
						ctx.Stack.Push(ExecuteScript(scriptName, EnvironmentStack.Peek().Self, EnvironmentStack.Peek().ObjectDefinition, arguments: arguments));
						break;
					}

					Debug.LogError($"Can't resolve script {instruction.FunctionName} !");
					Debug.Break();
					return (ExecutionResult.Failed, null);
				case VMOpcode.PUSHENV:
					var assetId = Convert<int>(ctx.Stack.Pop());
					var instances = Array.Empty<NewGamemakerObject>(); // TODO get instances with asset id

					// marks the beginning of the instances pushed. popenv will stop jumping when it reaches this
					// SUPER HACKY. there HAS to be a better way of doing this
					EnvironmentStack.Push(null);
					
					// dont run anything is no instances
					if (instances.Length == 0)
					{
						if (instruction.JumpToEnd)
						{
							return (ExecutionResult.JumpedToEnd, null);
						}

						return (ExecutionResult.JumpedToLabel, instruction.IntData);
					}

					foreach (var instance in instances)
					{
						var newCtx = new VMScriptExecutionContext
						{
							Self = instance,
							ObjectDefinition = instance.Definition,
							EventType = ctx.EventType,
							EventIndex = ctx.EventIndex
						};

						EnvironmentStack.Push(newCtx);
					}
					break;
				case VMOpcode.POPENV:
					var currentInstance = EnvironmentStack.Pop();
					var nextInstance = EnvironmentStack.Peek();

					// no instances pushed
					if (currentInstance == null)
					{
						break;
					}

					// no instances left
					if (nextInstance == null)
					{
						EnvironmentStack.Pop();
						break;
					}

					// run block with next instance
					if (instruction.JumpToEnd)
					{
						return (ExecutionResult.JumpedToEnd, null);
					}

					return (ExecutionResult.JumpedToLabel, instruction.IntData);
				case VMOpcode.MUL:
				case VMOpcode.DIV:
				case VMOpcode.REM:
				case VMOpcode.MOD:
				case VMOpcode.SUB:
				case VMOpcode.AND:
				case VMOpcode.OR:
				case VMOpcode.XOR:
				case VMOpcode.NEG:
				case VMOpcode.SHL:
				case VMOpcode.SHR:
				case VMOpcode.DUP:
				case VMOpcode.EXIT:
				case VMOpcode.CALLV:
				case VMOpcode.BREAK:
				default:
					Debug.LogError($"Unknown opcode {instruction.Opcode}");
					Debug.Break();
					return (ExecutionResult.Failed, null);
			}

			return (ExecutionResult.Success, null);
		}
	}
}
