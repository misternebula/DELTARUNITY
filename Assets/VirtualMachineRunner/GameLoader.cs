using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public class GameLoader : MonoBehaviour
	{
		public static GameLoader Instance { get; private set; }

		public List<VMScript> GlobalScripts = new();

		public void Awake()
		{
			Instance = this;
		}

		public void Start()
		{
			foreach (var script in GlobalScripts)
			{
				VMExecuter.ExecuteScript(script, null, null);
			}

			RoomManager.RoomManager.Instance.ChangeRoom(0);
		}
	}
}
