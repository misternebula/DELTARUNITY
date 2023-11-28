using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.VirtualMachineRunner;
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace Assets.RoomManager
{
	public class Room : MonoBehaviour
	{
		public static Room Instance { get; private set; }

		public string Name => gameObject.name;
		public Vector2 Size;
		public Vector2 ViewSize;
		public NewGamemakerObject ObjectToFollow;
		public bool Persistent;

		public void Awake()
		{
			Instance = this;

			foreach (var item in FindObjectsOfType<NewGamemakerObject>())
			{
				item.TryExecuteScript(item.Definition.OtherScript, OtherType.RoomStart);
			}

			foreach (var item in FindObjectsOfType<NewGamemakerObject>().OrderBy(x => x.instanceId))
			{
				item.TryExecuteScript(item.Definition.PreCreateScript);
			}
		}

		private void Start()
		{
			var camera = GamemakerCamera.Instance;
			camera.GetComponent<Camera>().orthographicSize = ViewSize.y / 2;

			var rt = new RenderTexture((int)ViewSize.x, (int)ViewSize.y, GraphicsFormat.R16G16B16A16_UNorm, GraphicsFormat.None, 0);
			rt.filterMode = FilterMode.Point;

			camera.GetComponent<Camera>().targetTexture = rt;
			camera.ScreenMaterial.mainTexture = rt;

			camera.SetPosition(Vector2.zero);
			camera.ObjectToFollow = ObjectToFollow;

			foreach (var item in FindObjectsOfType<NewGamemakerObject>().OrderBy(x => x.instanceId))
			{
				if (item._createRan)
				{
					continue;
				}

				item._createRan = true;
				item.TryExecuteScript(item.Definition.CreateScript);
			}
		}

		private void OnDrawGizmos()
		{
			Gizmos.color = Color.cyan;
			var center = new Vector3(Size.x / 2, -(Size.y / 2), 0);
			var size = new Vector3(Size.x, Size.y, 1);
			Gizmos.DrawWireCube(center, size);
		}
	}
}
