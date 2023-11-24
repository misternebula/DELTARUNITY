using Assets.SpriteManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	[CreateAssetMenu(fileName = "VMScript", menuName = "ScriptableObjects/VMScript", order = 2)]
	public class VMScript : ScriptableObject
	{
		public string Name;
		public List<VMScriptBlock> Blocks = new();
	}

	[Serializable]
	public class VMScriptBlock
	{
		public int ID;
		public List<VMScriptInstruction> Instructions = new();
	}

	[Serializable]
	public class VMScriptInstruction
	{
		public string Raw;

		public VMOpcode Opcode;
		public VMType TypeOne = VMType.None;
		public VMType TypeTwo = VMType.None;

		public int IntData;
		public double DoubleData;
		public string StringData;
		public bool BoolData;

		public string FunctionName;
		public int FunctionArgumentCount;

		public bool JumpToEnd;

		public VMComparison Comparison = VMComparison.None;
	}
}
