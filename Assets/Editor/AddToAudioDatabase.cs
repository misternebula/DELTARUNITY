using Assets.AudioManager;
using UnityEditor;
using UnityEngine;

namespace Assets.Editor
{
	internal class AddToAudioDatabase
	{
		[MenuItem("Assets/Add to Audio Database")]
		private static void CreateSubLibrary()
		{
			var database = AssetDatabase.LoadAssetAtPath<AudioDatabase>("Assets/ScriptableObjects/AudioDatabase.asset");
			database.SoundClips.AddRange(Selection.GetFiltered<AudioClip>(SelectionMode.Assets));
		}
	}
}
