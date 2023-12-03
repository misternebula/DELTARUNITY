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
	/// <summary>
	/// "template" for an object. analagous to a class
	/// </summary>
	[CreateAssetMenu(fileName = "ObjectDefinition", menuName = "ScriptableObjects/Object Definition", order = 2)]
	public class ObjectDefinition : ScriptableObject
	{
		public int AssetId;

		public int sprite = -1;
		public bool visible = true;
		public bool solid;
		public bool persistent;
		/// <summary>
		/// 
		/// 
		/// 
		/// 
		/// 
		//
		/// analogous to a superclass
		/// </summary>
		public ObjectDefinition parent;

		public int textureMaskId = -1;

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
