using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets
{
	internal class DrawManager : MonoBehaviour
	{
		private static List<DrawWithDepth> _drawObjects = new();

		public static void Register(DrawWithDepth obj)
		{
			if (_drawObjects.Contains(obj))
			{
				Debug.LogError($"_gmObjects already contains {(obj as MonoBehaviour).name} ?");
				return;
			}

			_drawObjects.Add(obj);
		}

		public static void Unregister(DrawWithDepth obj)
		{
			if (!_drawObjects.Contains(obj))
			{
				return;
			}

			_drawObjects.Remove(obj);
		}

		private void FixedUpdate()
		{
			//_drawObjects.Sort((s1, s2) => s2.instanceId.CompareTo(s1.instanceId));

			var stepList = _drawObjects.OrderBy(x => x.instanceId);

			//foreach (var item in _drawObjects.ToList())
			foreach (var item in stepList)
			{
				if (item is GamemakerObject gm)
				{
					gm.Step();
				}
			}

			var drawList = _drawObjects.OrderByDescending(x => x.depth).ThenBy(x => x.instanceId);

			foreach (var item in drawList)
			{
				item.Draw();
			}

			GamemakerCamera.Instance.GetComponent<Camera>().Render();
		}
	}
}
