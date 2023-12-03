using System.Collections.Generic;
using Assets.VirtualMachineRunner;
using UnityEngine;

namespace Assets.Instances
{
	[CreateAssetMenu(fileName = "InstanceDatabase", menuName = "ScriptableObjects/Instance Database", order = 1)]
	public class InstanceDatabase : ScriptableObject
	{
		public List<ObjectDefinition> ObjectDefinitions;
	}
}