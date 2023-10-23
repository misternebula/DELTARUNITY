using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets
{
	public static class Extensions
	{
		public static bool HasOverride(this MethodInfo method)
		{
			return (method.Attributes & MethodAttributes.Virtual) != 0 &&
				   (method.Attributes & MethodAttributes.NewSlot) == 0;
		}

		public static T GetAddComponent<T>(this GameObject obj)
			where T : Component
		{
			var ret = obj.GetComponent<T>();

			if (ret == null)
			{
				ret = obj.AddComponent<T>();
			}

			return ret;
		}

		public static Color BGRToColor(this int bgr)
		{
			var bytes = BitConverter.GetBytes(bgr);
			return BitConverter.IsLittleEndian
				? (Color)new Color32(bytes[0], bytes[1], bytes[2], 255)
				: (Color)new Color32(bytes[2], bytes[1], bytes[0], 255);
		}
	}
}
