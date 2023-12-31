using System;
using System.Collections.Generic;
using Assets;
using Assets.Instances;
using Assets.SpriteManager;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Assets.Scripts;
using Assets.VirtualMachineRunner;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEditor.VersionControl;
using UnityEngine;

public class LoadObjectData
{
	static Dictionary<AssetType, Dictionary<string, int>> AssetList = null;
	static Dictionary<string, int> NameToIndex = null;

	static void GenerateDicts()
	{
		AssetList = new();
		NameToIndex = new();

		var textAsset = AssetDatabase.LoadAssetAtPath<TextAsset>("Assets/Resources/asset_names.txt");

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
	}

	[MenuItem("GameObject/Load object data")]
	private static void LoadObjectdata()
	{
		if (AssetList == null)
		{
			GenerateDicts();
		}

		var file = EditorUtility.OpenFilePanel("Find object data", "", "txt");

		var lines = File.ReadAllLines(file);

		GameObject currentParent = null;

		for (int i = 0; i < lines.Length; i++)
		{
			var currentLine = lines[i];
			if (currentLine.StartsWith("@@"))
			{
				var layerName = currentLine[2..];
				currentParent = new GameObject(layerName);
				var depth = int.Parse(layerName.Split("_").Last());
				var layer = currentParent.AddComponent<GMLayer>();
				layer.Depth = depth;
				continue;
			}

			var instanceId = currentLine;
			var positionLine = lines[i + 1].Split(";");
			var definition = lines[i + 2];
			var scaleLine = lines[i + 3].Split(";");

			var position = new Vector3(int.Parse(positionLine[0]), -int.Parse(positionLine[1]), 0);
			var scale = new Vector3(float.Parse(scaleLine[0]), float.Parse(scaleLine[1]), 0);

			var instanceDatabase = AssetDatabase.LoadAssetAtPath<InstanceDatabase>("Assets/ScriptableObjects/InstanceDatabase.asset");
			var obj = instanceDatabase.ObjectDefinitions.FirstOrDefault(x => x.name == definition);

			if (obj == null)
			{
				var newDefinition = ScriptableObject.CreateInstance<ObjectDefinition>();
				newDefinition.name = definition;
				newDefinition.AssetId = AssetList[AssetType.objects][definition];

				AssetDatabase.CreateAsset(newDefinition, $"Assets/Objects/UNPOPULATED/{definition}.asset");

				obj = newDefinition;

				instanceDatabase.ObjectDefinitions.Add(newDefinition);

				EditorUtility.SetDirty(instanceDatabase);
				AssetDatabase.SaveAssets();
				AssetDatabase.Refresh();
			}

			var gameObject = new GameObject(definition);
			gameObject.transform.parent = currentParent.transform;
			gameObject.transform.localPosition = position;
			gameObject.transform.localScale = scale;

			var gmo = gameObject.AddComponent<NewGamemakerObject>();
			gmo.Definition = obj;
			gmo.instanceId = int.Parse(instanceId);

			i += 3;
		}

		EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
	}
}