using Assets.SpriteManager;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEngine;

public class SpriteSubLibraryCreator
{
	[MenuItem("Assets/Create Sprite Asset")]
	private static void CreateSubLibrary()
	{
		var items = Selection.GetFiltered<Texture2D>(SelectionMode.Assets);

		var sprites = items.Select(x => AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GetAssetPath(x))).ToArray();

		if (sprites.Length > 1)
		{
			Array.Sort(sprites.Select(x => int.Parse(x.name[(x.name.LastIndexOf('_') + 1)..])).ToArray(), sprites);
		}

		var asset = ScriptableObject.CreateInstance<SpriteSubLibrary>();
		asset.SubImages = sprites.ToList();

		var path = AssetDatabase.GetAssetPath(items[0]);
		path = path.Replace(".png", "");

		if (items.Length != 1 || items[0].name.EndsWith("_0"))
		{
			path = path.Remove(path.LastIndexOf('_'));
		}

		path += ".asset";

		AssetDatabase.CreateAsset(asset, path);

		var database = AssetDatabase.LoadAssetAtPath<CustomSpriteLibrary>("Assets/ScriptableObjects/SpriteDatabase.asset");
		database.Sprites.Add(asset);

		EditorUtility.SetDirty(database);
		AssetDatabase.SaveAssets();
		AssetDatabase.Refresh();
	}

	[MenuItem("Assets/Create Sprite Asset", true)]
	private static bool CreateSubLibraryValidator()
	{
		var items = Selection.GetFiltered(typeof(UnityEngine.Object), SelectionMode.Assets);
		return items.All(x => x is Texture2D);
	}
}
