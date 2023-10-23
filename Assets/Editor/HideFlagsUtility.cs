using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;

// https://gist.github.com/FlaShG/38d860c836d9e09d606def9e6069024a

public static class HideFlagsUtility
{
	[MenuItem("Help/Hide Flags/Show All Objects")]
	private static void ShowAll()
	{
		var allObjects = Resources.FindObjectsOfTypeAll<Object>();
		foreach (var obj in allObjects)
		{
			switch (obj.hideFlags)
			{
				case HideFlags.HideAndDontSave:
					obj.hideFlags = HideFlags.DontSave;
					break;
				case HideFlags.HideInHierarchy:
				case HideFlags.HideInInspector:
					obj.hideFlags = HideFlags.None;
					break;
			}
		}
	}
}