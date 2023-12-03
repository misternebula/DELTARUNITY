using Assets.Scripts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;

namespace Assets.Editor
{
	public class AssetIndexWindow : EditorWindow
	{
		private string text;
		private string outputText;

		[MenuItem("DELTARUNITY/Open Asset Index Window")]
		public static void ShowWindow()
		{
			EditorWindow.GetWindow(typeof(AssetIndexWindow));
		}

		void OnGUI()
		{
			GUILayout.BeginHorizontal();
			GUILayout.Label("Name:");
			text = GUILayout.TextField(text);
			GUILayout.EndHorizontal();

			if (GUILayout.Button("Get Asset Index"))
			{
				var textAsset = AssetDatabase.LoadAssetAtPath<TextAsset>("Assets/Resources/asset_names.txt");

				var AssetList = new Dictionary<AssetType, Dictionary<string, int>>();
				var NameToIndex = new Dictionary<string, int>();

				var lines = textAsset.text.Split(Environment.NewLine);
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

				outputText = NameToIndex[text].ToString();
			}

			GUILayout.TextField(outputText);
		}
	}
}
