using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets
{
	[Serializable]
	public class Inheritance
	{
		public string ObjectName;
		public string Parent;
	}

	internal class InheritanceManager : MonoBehaviour
	{
		public List<Inheritance> Inheritances;

		private Dictionary<string, string> _inheritances = new();

		public static InheritanceManager Instance { get; private set; }

		public void Start()
		{
			Instance = this;

			foreach (var item in Inheritances)
			{
				_inheritances.Add(item.ObjectName, item.Parent);
			}
		}

		public bool HasParentCalled(string rootObj, string parentName)
		{
			if (rootObj == parentName)
			{
				return true;
			}

			if (!_inheritances.ContainsKey(rootObj))
			{
				return false;
			}

			var currentObj = rootObj;
			while (_inheritances.ContainsKey(currentObj))
			{
				if (_inheritances[currentObj] == parentName)
				{
					return true;
				}

				currentObj = _inheritances[currentObj];
			}

			return false;
		}
	}
}
