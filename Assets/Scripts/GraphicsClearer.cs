using Assets;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GraphicsClearer : MonoBehaviour
{
	private void FixedUpdate()
	{
		GamemakerCamera.RenderJobs.Clear();
	}
}
