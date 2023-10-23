using Assets;
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine.UIElements;

[CustomEditor(typeof(GamemakerObject), true)]
[CanEditMultipleObjects]
public class GamemakerObjectEditor : Editor
{
	private SerializedProperty instanceId;
	private SerializedProperty spriteIndex;
	private SerializedProperty visible;
	private SerializedProperty persistent;
	private SerializedProperty textureMaskId;

	private void OnEnable()
	{
		instanceId = serializedObject.FindProperty("instanceId");
		spriteIndex = serializedObject.FindProperty("sprite_index");
		visible = serializedObject.FindProperty("visible");
		persistent = serializedObject.FindProperty("persistent");
		textureMaskId = serializedObject.FindProperty("texture_mask_id");
	}

	public override void OnInspectorGUI()
	{
		serializedObject.Update();
		EditorGUILayout.PropertyField(instanceId);
		EditorGUILayout.PropertyField(spriteIndex);
		EditorGUILayout.PropertyField(visible);
		EditorGUILayout.PropertyField(persistent);
		EditorGUILayout.PropertyField(textureMaskId);
		serializedObject.ApplyModifiedProperties();
	}
}