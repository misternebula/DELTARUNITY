using Assets.RoomManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEngine;

namespace Assets.Instances
{
	public class InstanceManager : MonoBehaviour
	{
		public static InstanceManager Instance;

		//public List<GameObject> Prefabs;
		public InstanceDatabase Asset;

		private Dictionary<string, GameObject> dict = new();

		public List<GamemakerObject> instances = new List<GamemakerObject>();

		public int _highestInstanceId = 0;

		private void Awake()
		{
			Instance = this;
			foreach (var item in Asset.Prefabs)
			{
				dict.Add(item.name, item);
			}
		}

		public GameObject instance_create(double x, double y, string name)
		{
			if (!dict.ContainsKey(name))
			{
				Debug.LogError("No object found called " + name);
				Debug.Break();
				return null;
			}

			var instance = Instantiate(dict[name]);
			instance.name = name;

			var objID = Array.IndexOf(global.__objectNames, name);

			if (objID == -1)
			{
				Debug.LogError($"global.__objectNames does not contain \"{name}\"");
				Debug.Break();
				return null;
			}

			var layerDepth = global.__objectID2Depth[objID];

			instance.GetComponent<GamemakerObject>().depth = layerDepth;
			instance.transform.position = new Vector3((float)x, -(float)y, 0);

			instance.GetComponent<GamemakerObject>().instanceId = _highestInstanceId++;

			instance.GetComponent<GamemakerObject>().Precreate();

			instance.GetComponent<GamemakerObject>().Create();
			instance.GetComponent<GamemakerObject>()._createRan = true;

			return instance;
		}

		public void RegisterInstance(GamemakerObject obj)
		{
			instances.Add(obj);
			if (_highestInstanceId < obj.instanceId)
			{
				_highestInstanceId = obj.instanceId;
			}
		}

		public int instance_number(string name)
		{
			instances.RemoveAll(x => x == null);
			return instances.Count(x => x.object_index == name);
		}

		public void instance_destroy(GamemakerObject obj)
		{
			if (obj != null)
			{
				obj.visible = false;
				DrawManager.Unregister(obj);
				Destroy(obj.gameObject);
			}

			instances.Remove(obj);
		}

		public bool instance_exists(string name)
		{
			instances.RemoveAll(x => x == null);

			var type = Type.GetType($"OBJECT_SCRIPTS.{name}");

			if (type == null)
			{
				Debug.LogError($"Could not find type for OBJECT_SCRIPTS.{name}");
			}

			return instances.Any(x => x.object_index == name || x.GetType().IsSubclassOf(type));
		}

		/*private static void CreateSortingLayer(int depth)
		{
			var layerName = $"Depth_{depth}";
			var serializedObject = new SerializedObject(AssetDatabase.LoadMainAssetAtPath("ProjectSettings/TagManager.asset"));
			var sortingLayers = serializedObject.FindProperty("m_SortingLayers");

			for (int i = 0; i < sortingLayers.arraySize; i++)
				if (sortingLayers.GetArrayElementAtIndex(i).FindPropertyRelative("name").stringValue.Equals(layerName))
					return;

			Debug.Log($"Creating sorting layer for depth {depth}");

			sortingLayers.arraySize++;
			sortingLayers.InsertArrayElementAtIndex(sortingLayers.arraySize);
			var newLayer = sortingLayers.GetArrayElementAtIndex(sortingLayers.arraySize - 1);
			newLayer.FindPropertyRelative("name").stringValue = layerName;
			newLayer.FindPropertyRelative("uniqueID").intValue = layerName.GetHashCode(); *//* some unique number *//*

			var layerCount = sortingLayers.arraySize;
			List<int> layerDepths = new();
			for (int i = 0; i < layerCount; i++)
			{
				var layer = sortingLayers.GetArrayElementAtIndex(i);
				var layername = layer.FindPropertyRelative("name").stringValue;

				if (layername == "Default")
				{
					continue;
				}

				layerDepths.Add(int.Parse(layername.Replace("Depth_", "")));
			}

			for (var i = 0; i < layerCount; i++)
			{
				if (i == layerCount - 1)
				{
					// already sorted correctly!
					serializedObject.ApplyModifiedProperties();
					return;
				}

				if (depth > layerDepths[i + 1])
				{
					sortingLayers.MoveArrayElement(layerCount - 1, i + 2);
					serializedObject.ApplyModifiedPropertiesWithoutUndo();
					return;
				}
			}
		}*/
	}
}
