using Assets;
using Assets.Instances;
using Assets.SpriteManager;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Assets.VirtualMachineRunner;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public class LoadObjectData
{
	[MenuItem("GameObject/Load object data")]
	private static void LoadObjectdata()
	{
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

			
			/*
			var gmTile = newTile.AddComponent<GMTile>();
			gmTile.Definition = definition;
			gmTile.instanceId = int.Parse(instanceId);
			gmTile.OnValidate();
			*/

			// try to find object
			//var instanceManager = Object.FindObjectOfType<InstanceManager>();
			//var obj = instanceManager.Prefabs.FirstOrDefault(x => x.name == definition);

			var instanceDatabase = AssetDatabase.LoadAssetAtPath<InstanceDatabase>("Assets/ScriptableObjects/InstanceDatabase.asset");

			// TODO : redo this with ObjectDefinitions
			/*var obj = instanceDatabase.Prefabs.FirstOrDefault(x => x.name == definition);

			if (obj == null)
			{
				var newTile = new GameObject(definition);
				newTile.transform.parent = currentParent.transform;
				newTile.transform.localPosition = position;
				newTile.transform.localScale = scale;

				var localPath = $"Assets/OBJECTS/TEMP/{definition}.prefab";

				var prefab = PrefabUtility.SaveAsPrefabAssetAndConnect(newTile, localPath, InteractionMode.UserAction);

				instanceDatabase.Prefabs.Add(prefab);
			}
			else
			{
				var newObj = (GameObject)PrefabUtility.InstantiatePrefab(obj);
				newObj.transform.parent = currentParent.transform;
				newObj.transform.localPosition = position;
				newObj.transform.localScale = scale;

				var gmo = newObj.GetComponent<NewGamemakerObject>();

				if (gmo != null)
				{
					gmo.instanceId = int.Parse(instanceId);
				}
			}*/

			i += 3;
		}

		EditorSceneManager.MarkSceneDirty(EditorSceneManager.GetActiveScene());
	}
}