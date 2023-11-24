using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public static class VMExecuter
	{
		public static Stack<NewGamemakerObject> EnvironmentStack = new();
		public static Stack<object> DataStack = new();

		public static void ExecuteScript(VMScript script, NewGamemakerObject obj)
		{
			Debug.Log($"Executing script {script.name} ...");

			// Make the current object the current instance
			EnvironmentStack.Push(obj);

			// Execute the first block, which will execute the next needed block, and so on.
			var zeroBlock = script.Blocks[0];
			ExecuteBlock(script, zeroBlock);

			// Current object has finished executing, remove from stack
			EnvironmentStack.Pop();
		}

		public static void ExecuteBlock(VMScript script, VMScriptBlock block)
		{
			foreach (var instruction in block.Instructions)
			{
				var hasJumped = ExecuteInstruction(instruction);

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
				ExecuteBlock(script, nextBlock);
			}
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

			if (obj is int i)
			{
				if (type == typeof(bool))
				{
					return i == 1;
				}
				else if (type == typeof(double))
				{
					return (double)i;
				}
			}
			else if (obj is bool b)
			{

			}

			Debug.LogError($"Can't convert {obj} ({obj.GetType().FullName}) to {type}");
			return default;
		}

		public static bool ExecuteInstruction(VMScriptInstruction instruction)
		{
			switch (instruction.Opcode)
			{
				case VMOpcode.CONV:
					var toType = GetType(instruction.TypeOne);
					DataStack.Push(Convert(DataStack.Pop(), toType));
					break;
				case VMOpcode.POPZ:
					DataStack.Pop();
					break;
				case VMOpcode.PUSHI:
					DataStack.Push(instruction.IntData);
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
							arguments.ArgumentArray[instruction.FunctionArgumentCount - 1 - i] = DataStack.Pop();
						}

						DataStack.Push(builtInFunction(arguments));
						
						break;
					}

					if (ScriptResolver.Instance.NameToScript.TryGetValue(instruction.FunctionName, out var script))
					{
						ExecuteScript(script, EnvironmentStack.Peek());
						break;
					}
					
					Debug.LogError($"Can't resolve script {instruction.FunctionName} !");
					Debug.Break();
					return true;
				case VMOpcode.MUL:
				case VMOpcode.DIV:
				case VMOpcode.REM:
				case VMOpcode.MOD:
				case VMOpcode.ADD:
				case VMOpcode.SUB:
				case VMOpcode.AND:
				case VMOpcode.OR:
				case VMOpcode.XOR:
				case VMOpcode.NEG:
				case VMOpcode.NOT:
				case VMOpcode.SHL:
				case VMOpcode.SHR:
				case VMOpcode.CMP:
				case VMOpcode.POP:
				case VMOpcode.DUP:
				case VMOpcode.RET:
				case VMOpcode.EXIT:
				case VMOpcode.B:
				case VMOpcode.BT:
				case VMOpcode.BF:
				case VMOpcode.PUSHENV:
				case VMOpcode.POPENV:
				case VMOpcode.PUSH:
				case VMOpcode.PUSHLOC:
				case VMOpcode.PUSHGLB:
				case VMOpcode.PUSHBLTN:
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
