using Assets.Scripts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets
{
	public class GMLayer : MonoBehaviour
	{
		public int LayerId;
		public int Depth;
		public double X;
		public double Y;
		public double HSpeed;
		public double VSpeed;
		public bool Visible = true;

		private void Awake()
		{
			var gmObjects = GetComponentsInChildren<DrawWithDepth>();

			foreach (var gmObject in gmObjects)
			{
				gmObject.depth = Depth;
			}
		}
	}
}
