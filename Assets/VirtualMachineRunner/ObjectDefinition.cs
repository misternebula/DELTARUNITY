using AYellowpaper.SerializedCollections;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	[CreateAssetMenu(fileName = "ObjectDefinition", menuName = "ScriptableObjects/Object Definition", order = 2)]
	public class ObjectDefinition : ScriptableObject
	{
		public string sprite;
		public bool visible = true;
		public bool solid;
		public bool persistent;
		public ObjectDefinition parent;
		public string textureMaskId;

		[Header("Events")]
		public VMScript CreateScript;
		public VMScript DestroyScript;

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<int, VMScript> AlarmScript = new();

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<StepType, VMScript> StepScript = new();

		//collision
		//keyboard
		//mouse

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<OtherType, VMScript> OtherScript = new();

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<DrawType, VMScript> DrawScript = new();

		//keypress
		//trigger
		//cleanup
		//gesture

		public VMScript PreCreateScript;
	}
}
