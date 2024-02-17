using Assets.Instances;
using Assets.VirtualMachineRunner;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.Scripts;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Serialization;

namespace Assets.RoomManager
{
	internal class RoomManager : MonoBehaviour
	{
		public static RoomManager Instance { get; private set; }

		public bool ChangeRoomAfterEventExecution = false;

		/// <summary>
		/// What script called the function to change rooms.
		/// </summary>
		public string ScriptName = null;

		/// <summary>
		/// The room to change to.
		/// </summary>
		public string RoomName = null;

		public void Awake()
		{
			QualitySettings.vSyncCount = 0;
			Application.targetFrameRate = 30;
			Instance = this;

			SceneManager.sceneLoaded += OnSceneLoaded;
		}

		public void Start()
		{
			DontDestroyOnLoad(this);
			DontDestroyOnLoad(GamemakerCamera.Instance.gameObject);
		}

		public void ChangeToWaitingRoom()
		{
			// events could destroy other objects, cant modify during iteration
			var instanceList = new List<NewGamemakerObject>(InstanceManager.Instance.instances);

			foreach (var instance in instanceList)
			{
				if (instance == null)
				{
					continue;
				}

				if (instance.persistent)
				{
					continue;
				}

				NewGamemakerObject.ExecuteScript(instance, instance.Definition, VirtualMachineRunner.EventType.Destroy);
				NewGamemakerObject.ExecuteScript(instance, instance.Definition, VirtualMachineRunner.EventType.CleanUp);

				DrawManager.Unregister(instance);
				Destroy(instance.gameObject);
			}

			InstanceManager.Instance.instances = InstanceManager.Instance.instances.Where(x => x != null && x.persistent).ToList();

			Room.Instance = null;
			ChangeRoomAfterEventExecution = false;
			ScriptName = null;
			SceneManager.LoadScene(RoomName);
			RoomName = null;
		}

		public void ChangeRoomAfterEvent(int index)
		{
			var roomName = AssetIndexManager.Instance.GetName(AssetType.rooms, index);
			ChangeRoomAfterEvent(roomName);
		}

		public void ChangeRoomAfterEvent(string roomName)
		{
			if (VMExecuter.currentExecutingScript.Count > 0)
			{
				ScriptName = VMExecuter.currentExecutingScript.Peek().name;
			}

			ChangeRoomAfterEventExecution = true;
			RoomName = roomName;

			if (Room.Instance != null && Room.Instance.Persistent)
			{
				// oh god we gotta save the current scene aaaaaaaa
				throw new NotImplementedException();
			}

			// events could destroy other objects, cant modify during iteration
			var instanceList = new List<NewGamemakerObject>(InstanceManager.Instance.instances);

			foreach (var instance in instanceList)
			{
				if (instance == null)
				{
					continue;
				}

				NewGamemakerObject.ExecuteScript(instance, instance.Definition, VirtualMachineRunner.EventType.Other, (int)OtherType.RoomEnd);
			}
		}

		public void OnSceneLoaded(Scene scene, LoadSceneMode mode)
		{
			Resources.FindObjectsOfTypeAll<GamemakerCamera>().First().OnSceneLoaded();
		}

		public int room_next(int numb)
		{
			var highestIndex = AssetIndexManager.Instance.GetHighestIndex(AssetType.rooms);

			if (highestIndex > numb + 1)
			{
				return numb + 1;
			}

			return -1;
		}

		public int room_previous(int numb)
		{
			if (numb == 0)
			{
				return -1;
			}

			return numb - 1;
		}

		public void room_goto_next()
		{
			ChangeRoomAfterEvent(room_next(AssetIndexManager.Instance.GetIndex(Room.Instance.Name)));
		}

		public void room_goto_previous()
		{
			ChangeRoomAfterEvent(room_previous(AssetIndexManager.Instance.GetIndex(Room.Instance.Name)));
		}

		public int GetRoomIndex(string name) => AssetIndexManager.Instance.GetIndex(name);
	}
}
