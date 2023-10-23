#if UNITY_EDITOR
using UnityEditor.SceneManagement;
using UnityEditor;
using UnityEngine;

[InitializeOnLoad]
public class EditorInit
{
	static EditorInit()
	{
		var pathOfFirstScene = EditorBuildSettings.scenes[0].path;
		var sceneAsset = AssetDatabase.LoadAssetAtPath<SceneAsset>(pathOfFirstScene);
		EditorSceneManager.playModeStartScene = sceneAsset;
	}
}
#endif