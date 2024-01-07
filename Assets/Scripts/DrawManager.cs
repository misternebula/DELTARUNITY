using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.RoomManager;
using Assets.VirtualMachineRunner;
using UnityEngine;
using EventType = Assets.VirtualMachineRunner.EventType;

namespace Assets
{
	internal class DrawManager : MonoBehaviour
	{
		private static List<DrawWithDepth> _drawObjects = new();

		public static void Register(DrawWithDepth obj)
		{
			if (_drawObjects.Contains(obj))
			{
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

		private void RunStepScript(IOrderedEnumerable<DrawWithDepth> items, StepType stepType)
		{
			foreach (var item in items)
			{
				if (item is NewGamemakerObject gm && gm._createRan && Room.RoomLoaded)
				{
					NewGamemakerObject.ExecuteScript(gm, gm.Definition, EventType.Step, (int)stepType);
				}
			}
		}

		private void RunDrawScript(IOrderedEnumerable<DrawWithDepth> items, DrawType drawType)
		{
			foreach (var item in items)
			{
				if (item is NewGamemakerObject gm && gm._createRan && Room.RoomLoaded)
				{
					if (drawType == DrawType.Draw)
					{
						if (!gm.Definition.DrawScript.ContainsKey(DrawType.Draw))
						{
							SpriteManager.SpriteManager.DrawSelf(gm);
							continue;
						}
					}

					NewGamemakerObject.ExecuteScript(gm, gm.Definition, EventType.Draw, (int)drawType);
				}
				else if (drawType == DrawType.Draw)
				{
					item.Draw();
				}
			}
		}

		private void FixedUpdate()
		{
			var stepList = _drawObjects.OrderByDescending(x => x.instanceId);

			RunStepScript(stepList, StepType.BeginStep);

			foreach (var item in stepList)
			{
				if (item is NewGamemakerObject gm)
				{
					gm.UpdateAlarms();
				}
			}

			foreach (var item in stepList)
			{
				if (item is NewGamemakerObject gmo)
				{
					foreach (var id in gmo.Definition.CollisionScript.Keys)
					{
						if (CollisionManager.CollisionManager.instance_place_assetid(gmo.x, gmo.y, id, gmo) != null)
						{
							NewGamemakerObject.ExecuteScript(gmo, gmo.Definition, EventType.Collision, id);
						}
					}
				}
			}

			RunStepScript(stepList, StepType.Step);
			RunStepScript(stepList, StepType.EndStep);

			var drawList = _drawObjects.OrderByDescending(x => x.depth).ThenByDescending(x => x.instanceId);

			RunDrawScript(drawList, DrawType.PreDraw);
			RunDrawScript(drawList, DrawType.DrawBegin);
			RunDrawScript(drawList, DrawType.Draw);
			RunDrawScript(drawList, DrawType.DrawEnd);
			RunDrawScript(drawList, DrawType.PostDraw);
			RunDrawScript(drawList, DrawType.DrawGUIBegin);
			RunDrawScript(drawList, DrawType.DrawGUI);
			RunDrawScript(drawList, DrawType.DrawGUIEnd);

			foreach (var item in drawList)
			{
				if (item is NewGamemakerObject)
				{
					item.Draw();
				}
			}

			GamemakerCamera.Instance.GetComponent<Camera>().Render();
		}
	}
}
