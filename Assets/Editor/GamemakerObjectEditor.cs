using Assets;
using Assets.VirtualMachineRunner;
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine.UIElements;

//[CustomEditor(typeof(NewGamemakerObject), true)]
[CanEditMultipleObjects]
public class GamemakerObjectEditor : UnityEditor.Editor
{
	private SerializedProperty instanceId;
	private SerializedProperty spriteIndex;
	private SerializedProperty visible;
	private SerializedProperty persistent;
	private SerializedProperty textureMaskId;

	private void OnEnable()
	{
		instanceId = serializedObject.FindProperty("instanceId");
		spriteIndex = serializedObject.FindProperty("_sprite_index");
		visible = serializedObject.FindProperty("visible");
		persistent = serializedObject.FindProperty("persistent");
		textureMaskId = serializedObject.FindProperty("_mask_id");
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