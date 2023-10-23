using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets
{
	public abstract class DrawWithDepth : MonoBehaviour
	{
		public int instanceId;
		public double depth;

		public abstract void Draw();
	}
}
