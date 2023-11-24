﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.SpriteManager;
using Assets.VirtualMachineRunner;
using UnityEditor;
using UnityEngine;

namespace Assets.Editor
{
	internal class VMScriptCreator
	{
		[MenuItem("Assets/Create VMScript")]
		private static void CreateFont()
		{
			var defaultAsset = Selection.activeObject as DefaultAsset;
			var lines = File.ReadAllLines(AssetDatabase.GetAssetPath(defaultAsset));

			int startLine = 0;
			for (var i = 0; i < lines.Length; i++)
			{
				if (lines[i] == ":[0]")
				{
					startLine = i;
				}
			}

			lines = lines.Skip(startLine).ToArray();
			lines = lines.Where(x => !string.IsNullOrWhiteSpace(x)).ToArray();

			var asset = ScriptableObject.CreateInstance<VMScript>();

			foreach (var line in lines)
			{
				if (line.StartsWith(":["))
				{
					var id = line.Substring(2, line.Length - 3);

					if (id == "end")
					{
						break;
					}

					var newBlock = new VMScriptBlock
					{
						ID = int.Parse(id)
					};

					asset.Blocks.Add(newBlock);
				}
				else
				{
					var opcode = line.Split(" ")[0];
					var operation = opcode.Split('.')[0];
					var types = opcode.Split(".").Skip(1).ToArray();

					var enumOperation = (VMOpcode)Enum.Parse(typeof(VMOpcode), operation.ToUpper());

					var instruction = new VMScriptInstruction
					{
						Raw = line,
						Opcode = enumOperation,
						TypeOne = types.Length >= 1 ? (VMType)Enum.Parse(typeof(VMType), types[0]) : VMType.None,
						TypeTwo = types.Length == 2 ? (VMType)Enum.Parse(typeof(VMType), types[1]) : VMType.None
					};

					switch (enumOperation)
					{
						case VMOpcode.CONV:
							// no data
							break;
						case VMOpcode.MUL:
							// no data
							break;
						case VMOpcode.DIV:
							// no data
							break;
						case VMOpcode.REM:
							break;
						case VMOpcode.MOD:
							break;
						case VMOpcode.ADD:
							// no data
							break;
						case VMOpcode.SUB:
							// no data
							break;
						case VMOpcode.AND:
							break;
						case VMOpcode.OR:
							break;
						case VMOpcode.XOR:
							break;
						case VMOpcode.NEG:
							break;
						case VMOpcode.NOT:
							break;
						case VMOpcode.SHL:
							break;
						case VMOpcode.SHR:
							break;
						case VMOpcode.CMP:
							var comparison = line.Substring(opcode.Length + 1);
							var enumComparison = (VMComparison)Enum.Parse(typeof(VMComparison), comparison);
							instruction.Comparison = enumComparison;
							break;
						case VMOpcode.POP:
							var variableName = line.Substring(opcode.Length + 1);
							instruction.StringData = variableName;
							break;
						case VMOpcode.DUP:
							// ???
							break;
						case VMOpcode.RET:
							// ???
							break;
						case VMOpcode.EXIT:
							// ???
							break;
						case VMOpcode.POPZ:
							// no data
							break;
						case VMOpcode.B:
						case VMOpcode.BT:
						case VMOpcode.BF:
						case VMOpcode.PUSHENV:
						case VMOpcode.POPENV:
							var blockId = line.Substring(opcode.Length + 1)[1..^1];
							if (blockId == "end")
							{
								instruction.JumpToEnd = true;
							}
							else
							{
								instruction.IntData = int.Parse(blockId);
							}
							break;
						case VMOpcode.PUSH:
						case VMOpcode.PUSHLOC:
						case VMOpcode.PUSHGLB:
						case VMOpcode.PUSHBLTN:
						case VMOpcode.PUSHI:
							Debug.Log(line);
							var data = line.Substring(opcode.Length + 1);
							switch (instruction.TypeOne)
							{
								case VMType.None:
									// what
									break;
								case VMType.s:
									instruction.StringData = data;
									break;
								case VMType.i:
									instruction.IntData = int.Parse(data);
									break;
								case VMType.v:
									instruction.StringData = data;
									break;
								case VMType.b:
									// not used i think?
									instruction.BoolData = bool.Parse(data);
									break;
								case VMType.d:
									instruction.DoubleData = double.Parse(data);
									break;
								case VMType.e:
									instruction.IntData = int.Parse(data);
									break;
								default:
									throw new ArgumentOutOfRangeException();
							}
							break;
						case VMOpcode.CALL:
						case VMOpcode.CALLV:
							var function = line.Substring(opcode.Length + 1);
							var argcIndex = function.IndexOf("argc=");
							var argumentCount = int.Parse(function[(argcIndex + 5)..^1]);
							var functionName = function.Substring(0, function.IndexOf('('));
							instruction.FunctionArgumentCount = argumentCount;
							instruction.FunctionName = functionName;
							break;
						case VMOpcode.BREAK:
							// ???
							break;
						default:
							throw new ArgumentOutOfRangeException();
					}

					asset.Blocks.Last().Instructions.Add(instruction);
				}
			}

			var path = AssetDatabase.GetAssetPath(defaultAsset);
			path = path.Replace(".asm", ".asset");

			AssetDatabase.CreateAsset(asset, path);
			AssetDatabase.SaveAssets();
			AssetDatabase.Refresh();
		}
	}
}
