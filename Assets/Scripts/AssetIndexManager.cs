using Assets.VirtualMachineRunner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.Scripts
{
	public enum AssetType
	{
		sounds,
		sprites,
		backgrounds,
		paths,
		scripts,
		fonts,
		objects,
		timelines,
		rooms,
		shaders,
		extensions
	}

	public class AssetIndexManager : MonoBehaviour
	{
		public static AssetIndexManager Instance { get; private set; }

		public TextAsset AssetNames;

		public Dictionary<AssetType, Dictionary<string, int>> AssetList = new();
		public Dictionary<string, int> NameToIndex = new();

		public void Awake()
		{
			Instance = this;
		}

		public void Start()
		{
			NameToIndex = new();
			AssetList = new();

			var lines = AssetNames.text.Split(Environment.NewLine);
			var headerLineNumber = 0;
			AssetType currentAssetType = 0;
			for (int i = 0; i < lines.Length; i++)
			{
				var line = lines[i];
				if (line.StartsWith("@@") && line.EndsWith("@@"))
				{
					headerLineNumber = i;
					currentAssetType = Enum.Parse<AssetType>(line.Trim('@'));
					continue;
				}

				NameToIndex.Add(line, i - headerLineNumber - 1);

				if (!AssetList.ContainsKey(currentAssetType))
				{
					AssetList.Add(currentAssetType, new Dictionary<string, int>());
				}

				AssetList[currentAssetType].Add(line, i - headerLineNumber - 1);
			}
		}

		public int GetIndex(string name)
		{
			return NameToIndex.TryGetValue(name, out var index) ? index : -1;
		}

		public int GetHighestIndex(AssetType type)
		{
			return AssetList[type].Values.Max();
		}

		public int Register(AssetType type, string name)
		{
			if (!AssetList.ContainsKey(type))
			{
				AssetList.Add(type, new Dictionary<string, int>());
			}

			var highestIndex = AssetList[type].Values.Max();
			AssetList[type].Add(name, highestIndex + 1);
			return highestIndex + 1;
		}
	}
}
