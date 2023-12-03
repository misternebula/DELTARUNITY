using System;
using System.Collections.Generic;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	/// <summary>
	/// contains data about each script execution and also environment
	/// </summary>
	public class VMScriptExecutionContext
	{
		public NewGamemakerObject Self;
		public ObjectDefinition ObjectDefinition;
		public Stack<object> Stack;
		public Dictionary<string, object> Locals;
		public object ReturnValue;
		public EventType EventType;
		public int EventIndex;
	}

	public static class VMExecuter
	{
		public static Stack<VMScriptExecutionContext> EnvironmentStack = new();
		/// <summary>
		/// gets the top level environment / execution context
		/// </summary>
		public static VMScriptExecutionContext Ctx => EnvironmentStack.Peek();

		public static object ExecuteScript(VMScript script, NewGamemakerObject obj, ObjectDefinition objectDefinition = null, EventType eventType = EventType.None, int eventIndex = 0, Arguments arguments = null)
		{
			{
				var newCtx = new VMScriptExecutionContext
				{
					Self = obj,
					ObjectDefinition = objectDefinition,
					Stack = new(),
					Locals = new(),
					ReturnValue = null,
					EventType = eventType,
					EventIndex = eventIndex
				};

				foreach (var item in script.LocalVariables)
				{
					newCtx.Locals.Add(item, null);
				}
				if (arguments != null)
				{
					newCtx.Locals["arguments"] = arguments.ArgumentArray;
				}

				// Make the current object the current instance
				EnvironmentStack.Push(newCtx);
			}

			// Execute the first block, which will execute the next needed block, and so on.
			/*var zeroBlock = script.Blocks[0];
			ExecuteBlock(script, zeroBlock, ctx);*/

			// Setup variables to start execution at label [0]
			var instructionIndex = script.Labels[0]; // this *should* always be 0, but idk.

			while (true)
			{
				// TODO: dont pass in ctx and just use EnvironmentStack.Peek for everything since PUSHENV/POPENV can change that
				var (executionResult, data) = ExecuteInstruction(script.Instructions[instructionIndex]);

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
					Ctx.ReturnValue = data;
					break;
				}
			}

			// Current object has finished executing, remove from stack
			EnvironmentStack.Pop();

			return Ctx.ReturnValue;
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
					return i > 0;
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
		public static (ExecutionResult result, object data) ExecuteInstruction(VMScriptInstruction instruction)
		{
			switch (instruction.Opcode)
			{
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
					var boolValue = Convert<bool>(Ctx.Stack.Pop());
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
					var boolValue = Convert<bool>(Ctx.Stack.Pop());
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

					var second = Ctx.Stack.Pop();
					var first = Ctx.Stack.Pop();

					if (second is bool or int or double && first is bool or int or double)
					{
						var firstNumber = Convert<double>(first);
						var secondNumber = Convert<double>(second);
						switch (instruction.Comparison)
						{
							case VMComparison.LT:
								Ctx.Stack.Push(firstNumber < secondNumber);
								break;
							case VMComparison.LTE:
								Ctx.Stack.Push(firstNumber <= secondNumber);
								break;
							case VMComparison.EQ:
								Ctx.Stack.Push(firstNumber == secondNumber);
								break;
							case VMComparison.NEQ:
								Ctx.Stack.Push(firstNumber != secondNumber);
								break;
							case VMComparison.GTE:
								Ctx.Stack.Push(firstNumber >= secondNumber);
								break;
							case VMComparison.GT:
								Ctx.Stack.Push(firstNumber > secondNumber);
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
							Ctx.Stack.Push(first == second);
						}
						else if (instruction.Comparison == VMComparison.NEQ)
						{
							//Debug.Log($"    - NEQ : {first != second}");
							Ctx.Stack.Push(first != second);
						}
						else
						{
							// ??? no idea if this is what GM does
							Ctx.Stack.Push(false);
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
							Ctx.Stack.Push(instruction.IntData);
							break;
						case VMType.v:
							// TODO: [stacktop] and [array] should use data stack (array might not always tho?)

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
									var index = Convert<int>(Ctx.Stack.Pop());
									Ctx.Stack.Push(VariableResolver.GetGlobalArrayIndex(variableName[7..], index));
									//Debug.Log($" - {VariableResolver.GetGlobalArrayIndex(variableName[7..], index)}");
								}
								else
								{
									Ctx.Stack.Push(VariableResolver.GetGlobalVariable(variableName[7..]));
									//Debug.Log($" - {VariableResolver.GetGlobalVariable(variableName[7..])}");
								}
							}
							else if (isLocal)
							{
								if (indexingArray)
								{
									var index = Convert<int>(Ctx.Stack.Pop());
									Ctx.Stack.Push(((Dictionary<int, object>)Ctx.Locals[variableName[6..]])[index]);
									//Debug.Log($" - {((Dictionary<int, object>)ctx.Locals[variableName[6..]])[index]}");
								}
								else
								{
									Ctx.Stack.Push(Ctx.Locals[variableName[6..]]);
									//Debug.Log($" - {ctx.Locals[variableName[6..]]}");
								}
							}
							else if (isSelf)
							{
								if (indexingArray)
								{
									var index = Convert<int>(Ctx.Stack.Pop());
									Ctx.Stack.Push(((Dictionary<int, object>)VariableResolver.GetSelfVariable(Ctx, variableName[5..]))[index]);
								}
								else
								{
									Ctx.Stack.Push(VariableResolver.GetSelfVariable(Ctx, variableName[5..]));
								}
							}
							else
							{
								Debug.LogError($"Don't know how to push variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
							}
							break;
						case VMType.b:
							//Debug.Log($"Pushing {instruction.BoolData}");
							Ctx.Stack.Push(instruction.BoolData);
							break;
						case VMType.d:
							//Debug.Log($"Pushing {instruction.DoubleData}");
							Ctx.Stack.Push(instruction.DoubleData);
							break;
						case VMType.e:
							// i think this is just an int always???
							//Debug.Log($"Pushing {instruction.IntData}");
							Ctx.Stack.Push(instruction.IntData);
							break;
						case VMType.s:
							var indexOfLast = instruction.StringData.LastIndexOf('@');
							var stringValue = instruction.StringData.Substring(0, indexOfLast);
							stringValue = stringValue[1..^1];
							//Debug.Log($"Pushing {stringValue}");
							Ctx.Stack.Push(stringValue);
							break;
						case VMType.None:
						default:
							throw new ArgumentOutOfRangeException();
					}

					break;
				}
				case VMOpcode.POP:
				{
					// TODO: [stacktop] and [array] should use data stack (array might not always tho?)

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
							var index = Convert<int>(Ctx.Stack.Pop());
							var unknown = Ctx.Stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = Ctx.Stack.Pop();
							//Debug.Log($"Set global {variableName[7..]} index {index} to {value}");
							VariableResolver.SetGlobalArrayIndex(variableName[7..], index, value);
						}
						else
						{
							var value = Ctx.Stack.Pop();
							//Debug.Log($"Set global {variableName[7..]} to {value}");
							VariableResolver.SetGlobalVariable(variableName[7..], value);
						}
					}
					else if (isLocal)
					{
						if (indexingArray)
						{
							var index = Convert<int>(Ctx.Stack.Pop());
							var unknown = Ctx.Stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = Ctx.Stack.Pop();

							if (Ctx.Locals[variableName[6..]] == null)
							{
								Ctx.Locals[variableName[6..]] = new Dictionary<int, object>();
							}

							//Debug.Log($"Set {variableName[6..]} index {index} to {value}");
							((Dictionary<int, object>)Ctx.Locals[variableName[6..]])[index] = value;
						}
						else
						{
							var value = Ctx.Stack.Pop();
							//Debug.Log($"Set {variableName[6..]} to {value}");
							Ctx.Locals[variableName[6..]] = value;
						}
					}
					else if (isSelf)
					{
						if (indexingArray)
						{
							var index = Convert<int>(Ctx.Stack.Pop());
							var unknown = Ctx.Stack.Pop(); // -5 means global, -1 means self, -2 means other. no idea why
							var value = Ctx.Stack.Pop();

							((Dictionary<int, object>)VariableResolver.GetSelfVariable(Ctx, variableName[5..]))[index] = value;
						}
						else
						{
							var value = Ctx.Stack.Pop();
							VariableResolver.SetSelfVariable(Ctx, variableName[5..], value);
						}
					}
					else
					{
						Debug.LogError($"Don't know how to pop to variable! name:{variableName} isGlobal:{isGlobal} isLocal:{isLocal} isSelf:{isSelf} indexingArray:{indexingArray}");
					}

					break;
				}
				case VMOpcode.RET:
					return (ExecutionResult.ReturnedValue, Ctx.Stack.Pop());
				case VMOpcode.CONV:
					var toType = GetType(instruction.TypeTwo);
					Ctx.Stack.Push(Convert(Ctx.Stack.Pop(), toType));
					break;
				case VMOpcode.POPZ:
					Ctx.Stack.Pop();
					break;
				case VMOpcode.PUSHI:
					Ctx.Stack.Push(instruction.IntData);
					break;
				case VMOpcode.CALL:
					var arguments = new Arguments
					{
						Context = EnvironmentStack.Peek(),
						ArgumentArray = new object[instruction.FunctionArgumentCount]
					};

					for (var i = 0; i < instruction.FunctionArgumentCount; i++)
					{
						arguments.ArgumentArray[i] = Ctx.Stack.Pop();
					}

					if (ScriptResolver.Instance.BuiltInFunctions.TryGetValue(instruction.FunctionName, out var builtInFunction))
					{
						Ctx.Stack.Push(builtInFunction(arguments));
						break;
					}

					if (ScriptResolver.Instance.NameToScript.TryGetValue(instruction.FunctionName, out var scriptName))
					{
						Ctx.Stack.Push(ExecuteScript(scriptName, EnvironmentStack.Peek().Self, EnvironmentStack.Peek().ObjectDefinition, arguments: arguments));
						break;
					}

					Debug.LogError($"Can't resolve script {instruction.FunctionName} !");
					Debug.Break();
					return (ExecutionResult.Failed, null);
				case VMOpcode.PUSHENV:
					var assetId = Convert<int>(Ctx.Stack.Pop());
					var instances = Array.Empty<NewGamemakerObject>(); // TODO get instances with asset id

					// marks the beginning of the instances pushed. popenv will stop jumping when it reaches this
					// SUPER HACKY. there HAS to be a better way of doing this
					EnvironmentStack.Push(null);

					// dont run anything if no instances
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
						// TODO: how does return work??
						var newCtx = new VMScriptExecutionContext
						{
							Self = instance,
							ObjectDefinition = instance.Definition,
							Stack = new(Ctx.Stack),
							Locals = new(Ctx.Locals),
							ReturnValue = Ctx.ReturnValue,
							EventType = Ctx.EventType,
							EventIndex = Ctx.EventIndex,
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
				case VMOpcode.DUP:
				{
					var unknown = instruction.IntData; // TODO: what is this?
					Ctx.Stack.Push(Ctx.Stack.Peek());
					break;
				}
				case VMOpcode.ADD:
					var valTwo = Ctx.Stack.Pop();
					var valOne = Ctx.Stack.Pop();

					var hasString = instruction.TypeOne == VMType.s || instruction.TypeTwo == VMType.s;
					var variableIsString = (instruction.TypeOne == VMType.v && valOne is string) || (instruction.TypeTwo == VMType.v && valTwo is string);

					// strings need to concat
					if (hasString || variableIsString)
					{
						var stringOne = Convert<string>(valOne);
						var stringTwo = Convert<string>(valTwo);
						Ctx.Stack.Push(stringOne + stringTwo);
						break;
					}

					// technically should convert using TypeOne and TypeTwo, but later instructions convert anyway so it's fine
					Ctx.Stack.Push(Convert<double>(valOne) + Convert<double>(valTwo));
					break;
				case VMOpcode.SUB:
				{
					var numTwo = Convert<double>(Ctx.Stack.Pop());
					var numOne = Convert<double>(Ctx.Stack.Pop());

					Ctx.Stack.Push(numOne - numTwo);
					break;
				}
				case VMOpcode.MUL:
				{
					// multiplication is commutative so this shouldnt matter, but eh. consistency.
					var numTwo = Convert<double>(Ctx.Stack.Pop());
					var numOne = Convert<double>(Ctx.Stack.Pop());

					Ctx.Stack.Push(numOne * numTwo);
					break;
				}
				case VMOpcode.DIV:
				{
					var numTwo = Convert<double>(Ctx.Stack.Pop());
					var numOne = Convert<double>(Ctx.Stack.Pop());

					Ctx.Stack.Push(numOne / numTwo);
					break;
				}
				case VMOpcode.REM:
				{
					var numTwo = Convert<double>(Ctx.Stack.Pop());
					var numOne = Convert<double>(Ctx.Stack.Pop());

					Ctx.Stack.Push(numOne % numTwo);
					break;
				}
				case VMOpcode.MOD:
				{
					var numTwo = Convert<double>(Ctx.Stack.Pop());
					var numOne = Convert<double>(Ctx.Stack.Pop());

					Ctx.Stack.Push(numOne % numTwo);
					break;
				}
				case VMOpcode.AND:
				{
					// should other binary types handle ops?
					var intTwo = Convert<int>(Ctx.Stack.Pop());
					var intOne = Convert<int>(Ctx.Stack.Pop());

					Ctx.Stack.Push(intOne & intTwo);
					break;
				}
				case VMOpcode.OR:
				{
					var intTwo = Convert<int>(Ctx.Stack.Pop());
					var intOne = Convert<int>(Ctx.Stack.Pop());

					Ctx.Stack.Push(intOne | intTwo);
					break;
				}
				case VMOpcode.XOR:
				{
					var intTwo = Convert<int>(Ctx.Stack.Pop());
					var intOne = Convert<int>(Ctx.Stack.Pop());

					Ctx.Stack.Push(intOne ^ intTwo);
					break;
				}
				case VMOpcode.NOT:
					switch (instruction.TypeOne)
					{
						case VMType.b:
							Ctx.Stack.Push(!Convert<bool>(Ctx.Stack.Pop()));
							break;
						default:
							Debug.LogError($"Don't know how to NOT {instruction.TypeOne}");
							break;
					}
					break;
				case VMOpcode.NEG:
					Ctx.Stack.Push(~Convert<int>(Ctx.Stack.Pop()));
					break;
				case VMOpcode.SHL:
				{
					// is this the right order?
					var intTwo = Convert<int>(Ctx.Stack.Pop());
					var intOne = Convert<int>(Ctx.Stack.Pop());

					Ctx.Stack.Push(intOne << intTwo);
					break;
				}
				case VMOpcode.SHR:
				{
					// is this the right order?
					var intTwo = Convert<int>(Ctx.Stack.Pop());
					var intOne = Convert<int>(Ctx.Stack.Pop());

					Ctx.Stack.Push(intOne >> intTwo);
					break;
				}
				case VMOpcode.CHKINDEX:
					// don't really know what this does.
					// possibly does bounds check and error throw? used before setting array index
					break;
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
