using Assets;
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;

[CustomEditor(typeof(Transform))]
public class TransformEditor : UnityEditor.Editor
{
	Transform transform;

	Vector2Field PositionField;
	Vector2Field ScaleField;
	FloatField RotationField;

	public override VisualElement CreateInspectorGUI()
	{
		var root = new VisualElement();
		transform = target as Transform;

		var serializedObject = new SerializedObject(transform);

		PositionField = new Vector2Field("Position");
		root.Add(PositionField);
		PositionField.value = new Vector2(transform.position.x, -transform.position.y);
		PositionField.RegisterValueChangedCallback(x =>
		{
			Undo.RecordObject(transform, "Change Position");
			transform.position = new Vector3(x.newValue.x, -x.newValue.y, 0);
		});

		ScaleField = new Vector2Field("Scale");
		root.Add(ScaleField);
		ScaleField.value = new Vector2(transform.localScale.x, transform.localScale.y);
		ScaleField.RegisterValueChangedCallback(x =>
		{
			Undo.RecordObject(transform, "Change Scale");
			transform.localScale = new Vector3(x.newValue.x, x.newValue.y, 0);
		});

		RotationField = new FloatField("Rotation");
		root.Add(RotationField);
		RotationField.value = transform.rotation.eulerAngles.z;
		RotationField.RegisterValueChangedCallback(x =>
		{
			Undo.RecordObject(transform, "Change Rotation");
			transform.rotation = Quaternion.Euler(0, 0, (float)x.newValue);
		});

		return root;
	}
}
