using Assets.Instances;
using Assets.VirtualMachineRunner;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Assets.RoomManager
{
	internal class RoomManager : MonoBehaviour
	{
		public static RoomManager Instance { get; private set; }

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

		public void ChangeRoom(int index)
		{
			ChangeRoom(_roomList[index]);
		}

		public void ChangeRoom(string roomName)
		{
			var sceneCount = SceneManager.sceneCountInBuildSettings;
			var scenes = new string[sceneCount];
			for (var i = 0; i < sceneCount; i++)
			{
				scenes[i] = Path.GetFileNameWithoutExtension(SceneUtility.GetScenePathByBuildIndex(i));
			}

			if (!scenes.Contains(roomName))
			{
				Debug.LogError($"Couldn't find room {roomName}");
				SceneManager.LoadScene("PLACE_DOG");
				return;
			}

			if (Room.Instance != null && Room.Instance.Persistent)
			{
				// oh god we gotta save the current scene aaaaaaaa
				throw new NotImplementedException();
			}

			// destroy events could destroy other objects, cant modify during iteration
			var instanceList = new List<NewGamemakerObject>(InstanceManager.Instance.instances);

			foreach (var instance in instanceList)
			{
				if (instance == null)
				{
					continue;
				}

				NewGamemakerObject.ExecuteScript(instance, instance.Definition, VirtualMachineRunner.EventType.Other, (int)OtherType.RoomEnd);
				
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

			SceneManager.LoadScene(roomName);
		}

		public void OnSceneLoaded(Scene scene, LoadSceneMode mode)
		{
			Resources.FindObjectsOfTypeAll<GamemakerCamera>().First().OnSceneLoaded();
		}

		private List<string> _roomList = new List<string>()
		{
			"ROOM_INITIALIZE",
			"PLACE_CONTACT",
			"room_krisroom",
			"room_krishallway",
			"room_torroom",
			"room_torhouse",
			"room_torbathroom",
			"room_town_krisyard",
			"room_town_northwest",
			"room_town_north",
			"room_beach",
			"room_town_mid",
			"room_town_apartments",
			"room_town_south",
			"room_town_school",
			"room_town_church",
			"room_graveyard",
			"room_town_shelter",
			"room_hospital_lobby",
			"room_hospital_hallway",
			"room_hospital_rudy",
			"room_hospital_room2",
			"room_diner",
			"room_townhall",
			"room_flowershop_1f",
			"room_flowershop_2f",
			"room_library",
			"room_alphysalley",
			"room_torielclass",
			"room_schoollobby",
			"room_alphysclass",
			"room_schooldoor",
			"room_insidecloset",
			"room_school_unusedroom",
			"room_dark1",
			"room_dark1a",
			"room_dark2",
			"room_dark3",
			"room_dark3a",
			"room_dark_wobbles",
			"room_dark_eyepuzzle",
			"room_dark7",
			"room_dark_chase1",
			"room_dark_chase2",
			"room_castle_outskirts",
			"room_castle_town",
			"room_castle_front",
			"room_castle_tutorial",
			"room_castle_darkdoor",
			"room_field_start",
			"room_field_forest",
			"room_field1",
			"room_field2",
			"room_field2A",
			"room_field_topchef",
			"room_field_puzzle1",
			"room_field_maze",
			"room_field_puzzle2",
			"room_field_getsusie",
			"room_field_shop1",
			"room_field_puzzletutorial",
			"room_field3",
			"room_field_boxpuzzle",
			"room_field4",
			"room_field_secret1",
			"room_field_checkers4",
			"room_field_checkers2",
			"room_field_checkers6",
			"room_field_checkers3",
			"room_field_checkers1",
			"room_field_checkers5",
			"room_field_checkers7",
			"room_field_checkersboss",
			"room_forest_savepoint1",
			"room_forest_area0",
			"room_forest_area1",
			"room_forest_area2",
			"room_forest_area2A",
			"room_forest_puzzle1",
			"room_forest_beforeclover",
			"room_forest_area3A",
			"room_forest_area3",
			"room_forest_savepoint2",
			"room_forest_smith",
			"room_forest_area4",
			"room_forest_dancers1",
			"room_forest_secret1",
			"room_forest_thrashmaker",
			"room_forest_starwalker",
			"room_forest_area5",
			"room_forest_savepoint_relax",
			"room_forest_maze1",
			"room_forest_maze_deadend",
			"room_forest_maze_susie",
			"room_forest_maze2",
			"room_forest_maze_deadend2",
			"room_forest_savepoint3",
			"room_forest_fightsusie",
			"room_forest_afterthrash2",
			"room_forest_afterthrash3",
			"room_forest_afterthrash4",
			"room_forest_castleview",
			"room_forest_chase1",
			"room_forest_chase2",
			"room_forest_castlefront",
			"room_cc_prison_cells",
			"room_cc_prisonlancer",
			"room_cc_prison_to_elevator",
			"room_cc_prison2",
			"room_cc_prisonelevator",
			"room_cc_elevator",
			"room_cc_prison_prejoker",
			"room_cc_joker",
			"room_cc_entrance",
			"room_cc_1f",
			"room_cc_rudinn",
			"room_cc_2f",
			"room_cc_rurus1",
			"room_cc_3f",
			"room_cc_hathy",
			"room_cc_4f",
			"room_cc_rurus2",
			"room_cc_clover",
			"room_cc_5f",
			"room_cc_lancer",
			"room_cc_6f",
			"room_cc_throneroom",
			"room_cc_preroof",
			"room_cc_kingbattle",
			"room_cc_prefountain",
			"room_cc_fountain",
			"PLACE_DOG",
			"room_legend",
			"room_shop1",
			"room_shop2",
			"room_gameover",
			"room_myroom_dark",
			"PLACE_LOGO",
			"PLACE_FAILURE",
			"PLACE_MENU",
			"room_ed",
			"room_empty",
			"room_man",
			"room_DARKempty",
			"room_battletest"
		};

		public int room_next(int numb)
		{
			if (_roomList.Count > numb + 1)
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
			ChangeRoom(_roomList[_roomList.IndexOf(Room.Instance.Name) + 1]);
		}

		public void room_goto_previous()
		{
			ChangeRoom(_roomList[_roomList.IndexOf(Room.Instance.Name) - 1]);
		}

		public int GetRoomIndex(string name)
		{
			return _roomList.IndexOf(name);
		}

		public string RoomGetName(int index)
		{
			return _roomList[index];
		}
	}
}
