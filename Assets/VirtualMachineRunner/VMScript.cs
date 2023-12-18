using Assets.SpriteManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AYellowpaper.SerializedCollections;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	[CreateAssetMenu(fileName = "VMScript", menuName = "ScriptableObjects/VMScript", order = 2)]
	public class VMScript : ScriptableObject
	{
		public string Name;
		public List<string> LocalVariables;
		[SerializedDictionary("Label", "Instruction Index")]
		public SerializedDictionary<int, int> Labels = new();
		public List<VMScriptInstruction> Instructions = new();
	}

	[Serializable]
	public class VMScriptInstruction
	{
		public string Raw;

		public VMOpcode Opcode;
		public VMType TypeOne = VMType.None;
		public VMType TypeTwo = VMType.None;

		// we could just store StringData and then parse it in opcodes, but this works too 
		public int IntData;
		public double DoubleData;
		public string StringData;
		public bool BoolData;
		public long LongData;

		public string FunctionName;
		public int FunctionArgumentCount;

		public bool JumpToEnd;

		public VMComparison Comparison = VMComparison.None;
	}
}
