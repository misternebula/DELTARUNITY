﻿using Assets.RoomManager;
using Assets.VirtualMachineRunner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.Scripts;
using UnityEditor;
using UnityEngine;
using EventType = Assets.VirtualMachineRunner.EventType;
using Object = System.Object;

namespace Assets.Instances
{
	public class InstanceManager : MonoBehaviour
	{
		public static InstanceManager Instance;

		//public List<GameObject> Prefabs;
		public InstanceDatabase Asset;

		private Dictionary<int, ObjectDefinition> dict = new();

		public List<NewGamemakerObject> instances = new List<NewGamemakerObject>();

		public int _highestInstanceId = 103506 + 1; // TODO : this changes per game - get from data.win

		private void Awake()
		{
			Instance = this;
			foreach (var item in Asset.ObjectDefinitions)
			{
				dict.Add(item.AssetId, item);
			}
		}

		public int instance_create_depth(double x, double y, int depth, int obj)
		{
			var definition = dict[obj];

			var newGO = new GameObject(definition.name);
			newGO.SetActive(false);

			var newGM = newGO.AddComponent<NewGamemakerObject>();
			newGM.Definition = definition;

			newGM.x = x;
			newGM.y = y;
			newGM.depth = depth;
			newGM.instanceId = _highestInstanceId++;
			newGM.sprite_index = definition.sprite;
			newGM.visible = definition.visible;
			newGM.persistent = definition.persistent;
			newGM.mask_id = definition.textureMaskId;

			newGO.SetActive(true);

			NewGamemakerObject.ExecuteScript(newGM, definition, EventType.PreCreate);
			NewGamemakerObject.ExecuteScript(newGM, definition, EventType.Create);
			newGM._createRan = true;
			return newGM.instanceId;
		}

		public void RegisterInstance(NewGamemakerObject obj)
		{
			if (instances.Contains(obj))
			{
				return;
			}

			if (obj == null)
			{
				Debug.LogError($"Tried to register a null instance!");
				return;
			}

			if (obj.Definition == null)
			{
				Debug.LogError($"Tried to register an instance with no definition! obj:{obj}");
				return;
			}

			instances.Add(obj);
		}

		public int instance_number(int obj)
		{
			instances.RemoveAll(x => x == null);
			return instances.Count(x => HasAssetInParents(x.Definition, obj));
		}

		private bool HasAssetInParents(ObjectDefinition definition, int id)
		{
			var currentDefinition = definition;
			while (currentDefinition != null)
			{
				if (currentDefinition.AssetId == id)
				{
					return true;
				}

				currentDefinition = currentDefinition.parent;
			}

			return false;
		}

		public void instance_destroy(NewGamemakerObject obj)
		{
			if (obj != null)
			{
				//obj.visible = false;
				DrawManager.Unregister(obj);
				Destroy(obj.gameObject);
			}

			instances.Remove(obj);
		}

		public NewGamemakerObject FindByInstanceId(int instanceId)
		{
			if (instanceId < GMConstants.FIRST_INSTANCE_ID)
			{
				throw new Exception($"Tried to find instance by asset id {instanceId}");
			}

			if (instances.Count(x => x.instanceId == instanceId) > 1)
			{
				Debug.LogError($"Found more than one object instance with id of {instanceId}.");
				return null;
			}

			var instance = instances.SingleOrDefault(x => x.instanceId == instanceId);
			return instance;
		}

		public bool instance_exists_instanceid(int instanceId)
		{
			return instances.Any(x => x.instanceId == instanceId);
		}

		public bool instance_exists_index(int assetIndex)
		{
			foreach (var instance in instances)
			{
				var definition = instance.Definition;
				while (definition != null)
				{
					if (definition.AssetId == assetIndex)
					{
						return true;
					}
					definition = definition.parent;
				}
			}

			return false;
		}

		public List<NewGamemakerObject> FindByAssetId(int assetId)
		{
			var result = new List<NewGamemakerObject>();
			foreach (var instance in instances)
			{
				var definition = instance.Definition;
				while (definition != null)
				{
					if (definition.AssetId == assetId)
					{
						result.Add(instance);
						break; // continue for loop
					}
					definition = definition.parent;
				}
			}
			return result;
		}
	}
}
