using AYellowpaper.SerializedCollections;
using System;
using System.Collections.Generic;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public class NewGamemakerObject : MonoBehaviour
	{
		[NonSerialized] // should this serialized? idk
		public Dictionary<string, object> Variables;
		
		[Header("Events")]
		public VMScript Create;
		public VMScript Destroy;

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<int, VMScript> Alarm = new();

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<StepType, VMScript> Step = new();

		//collision
		//keyboard
		//mouse

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<OtherType, TextAsset> Other = new();

		[SerializedDictionary("Subtype ID", "Actions")]
		public SerializedDictionary<DrawType, TextAsset> Draw = new();

		//keypress
		//trigger
		//cleanup
		//gesture

		public VMScript PreCreate;
	}
}