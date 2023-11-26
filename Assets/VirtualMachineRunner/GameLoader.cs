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

		public TextAsset AssetNames;

		public Dictionary<string, int> NameToIndex = new();

		public void Awake()
		{
			Instance = this;
		}

		public void Start()
		{
			var lines = AssetNames.text.Split(Environment.NewLine);
			var headerLineNumber = 0;
			for (int i = 0; i < lines.Length; i++)
			{
				var line = lines[i];
				if (line.StartsWith("@@") && line.EndsWith("@@"))
				{
					headerLineNumber = i;
					continue;
				}

				NameToIndex.Add(line, i - headerLineNumber - 1);
			}

			foreach (var script in GlobalScripts)
			{
				VMExecuter.ExecuteScript(script, null);
			}
		}
	}
}
