using Assets.TextManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets
{
	internal class SceneCameraViewer : MonoBehaviour
	{
		public void OnPostRender()
		{
			GamemakerCamera.RenderGL();
		}
	}
}
