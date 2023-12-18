using Assets;
using Assets.Scripts;
using System.Collections.Generic;
using System;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEditor.VersionControl;
using UnityEngine;

public class LoadTileData
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

	[MenuItem("GameObject/Load Tiledata")]
	private static void LoadTiledata()
	{
		if (AssetList == null)
		{
			GenerateDicts();
		}

		var file = EditorUtility.OpenFilePanel("Find Tiledata", "", "txt");

		var lines = File.ReadAllLines(file);

		GameObject currentParent = null;

		/*foreach (var line in lines)
		{
			if (line.StartsWith("@@"))
			{
				var layerName = line[2..];
				currentParent = new GameObject(layerName);
				var depth = int.Parse(layerName.Split("_").Last());
				var layer = currentParent.AddComponent<GMLayer>();
				layer.Depth = depth;
			}
		}*/

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
			var sourceLine = lines[i + 3].Split(";");

			var position = new Vector3(int.Parse(positionLine[0]), -int.Parse(positionLine[1]), 0);
			var source = new Vector4(int.Parse(sourceLine[0]), int.Parse(sourceLine[1]), int.Parse(sourceLine[2]), int.Parse(sourceLine[3]));

			var newTile = new GameObject(definition);
			newTile.transform.parent = currentParent.transform;

			newTile.transform.localPosition = position;
			var gmTile = newTile.AddComponent<GMTile>();
			gmTile.Definition = AssetList[AssetType.sprites][definition];
			gmTile.Source = source;
			gmTile.instanceId = int.Parse(instanceId);
			gmTile.OnValidate();

			i += 3;
		}

		EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
	}
}