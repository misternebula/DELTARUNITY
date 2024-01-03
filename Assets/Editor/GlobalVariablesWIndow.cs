using Assets.Scripts;
using Assets.VirtualMachineRunner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;

namespace Assets.Editor
{
	public class GlobalVariablesWindow : EditorWindow
	{
		[MenuItem("DELTARUNITY/Open Global Variables Window")]
		public static void ShowWindow()
		{
			EditorWindow.GetWindow(typeof(GlobalVariablesWindow));
		}

		private Vector2 scrollPos;

		void OnGUI()
		{
			scrollPos = EditorGUILayout.BeginScrollView(scrollPos);

			foreach (var item in VariableResolver.GlobalVariables)
			{
				EditorGUILayout.LabelField($"{item.Key}: {item.Value}");
			}

			EditorGUILayout.EndScrollView();
		}
	}
}
