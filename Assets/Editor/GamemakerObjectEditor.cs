using Assets;
using Assets.VirtualMachineRunner;
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine.UIElements;

[CustomEditor(typeof(NewGamemakerObject), true)]
[CanEditMultipleObjects]
public class GamemakerObjectEditor : UnityEditor.Editor
{
	private SerializedProperty instanceId;
	private SerializedProperty definition;
	private NewGamemakerObject ngo;

	private void OnEnable()
	{
		instanceId = serializedObject.FindProperty(nameof(NewGamemakerObject.instanceId));
		definition = serializedObject.FindProperty(nameof(NewGamemakerObject.Definition));
		ngo = (NewGamemakerObject)target;
	}

	public override void OnInspectorGUI()
	{
		serializedObject.Update();

		EditorGUILayout.PropertyField(instanceId);
		EditorGUILayout.PropertyField(definition);

		foreach (var item in ngo.SelfVariables)
		{
			EditorGUILayout.LabelField($"{item.Key}: {item.Value}");
		}

		serializedObject.ApplyModifiedProperties();
	}
}