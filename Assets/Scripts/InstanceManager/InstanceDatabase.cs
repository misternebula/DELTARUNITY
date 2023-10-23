using System.Collections.Generic;
using UnityEngine;

namespace Assets.Instances
{
	[CreateAssetMenu(fileName = "InstanceDatabase", menuName = "ScriptableObjects/Instance Database", order = 1)]
	public class InstanceDatabase : ScriptableObject
	{
		public List<GameObject> Prefabs;
	}
}