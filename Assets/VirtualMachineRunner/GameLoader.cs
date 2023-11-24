using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public class GameLoader : MonoBehaviour
	{
		public List<VMScript> GlobalScripts = new();

		public void Start()
		{
			foreach (var script in GlobalScripts)
			{
				VMExecuter.ExecuteScript(script, null);
			}
		}
	}
}
