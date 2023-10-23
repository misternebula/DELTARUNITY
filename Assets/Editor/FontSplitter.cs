using Assets.SpriteManager;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEngine;

namespace Assets.Editor
{
	internal class FontSplitter
	{
		[MenuItem("Assets/Create Font From Texture")]
		private static void CreateFont()
		{
			var textureSheet = Selection.activeObject as Texture2D;

			if (textureSheet == null)
			{
				return;
			}

			var csvFile = EditorUtility.OpenFilePanel("Select .csv file", "", "csv");
			var csv = File.ReadAllLines(csvFile);
			//var creationDir = new DirectoryInfo($"Assets/Fonts/newfonts/{Directory.GetParent(csvFile).Name}");

			var library = AssetDatabase.LoadAssetAtPath<FontLibrary>("Assets/ScriptableObjects/FontLibrary.asset");

			var fontAsset = new FontAsset
			{
				name = textureSheet.name,
				texture = textureSheet
			};

			for (var i = 1; i < csv.Length; i++)
			{
				var line = csv[i];
				var s = line.Split(';');

				var characterIndex = int.Parse(s[0]);

				Debug.Log($"Creating index {characterIndex}...");

				var x = int.Parse(s[1]);
				var y = int.Parse(s[2]);
				var width = int.Parse(s[3]);
				var height = int.Parse(s[4]);
				var shift = int.Parse(s[5]); // horizontal distance from origin to next glyph
				var offset = int.Parse(s[6]); // horizontal offset of glyph rendering

				if (width == 0 && height == 0)
				{
					continue;
				}

				/*var texture = new Texture2D(width, height, TextureFormat.ARGB32, false);

				var readPixels = textureSheet.GetPixels(x, textureSheet.height - y - height, width, height);
				texture.SetPixels(0, 0, width, height, readPixels);
				texture.filterMode = FilterMode.Point;
				texture.Apply();

				var png = texture.EncodeToPNG();
				var path = $"{creationDir}\\{textureSheet.name}&{characterIndex}.png";
				File.WriteAllBytes(path, png);
				AssetDatabase.ImportAsset(path);
				
				var newEntry = new Glyph();
				newEntry.characterIndex = characterIndex;
				newEntry.shift = shift;
				newEntry.offset = offset;

				fontAsset.entries.Add(newEntry);*/

				var newEntry = new Glyph
				{
					characterIndex = characterIndex,
					x = x,
					y = y,
					w = width,
					h = height,
					shift = shift,
					offset = offset
				};

				fontAsset.entries.Add(newEntry);
			}

			AssetDatabase.Refresh();

			library.fonts.Add(fontAsset);

			EditorUtility.SetDirty(library);
			AssetDatabase.SaveAssets();
			AssetDatabase.Refresh();
		}

		/*[MenuItem("Assets/Populate Textures In Font Entry")]
		private static void PopulateTextures()
		{
			var items = Selection.GetFiltered<Texture2D>(SelectionMode.Assets);
			var fontName = items[0].name.Split("&")[0];
			var library = AssetDatabase.LoadAssetAtPath<FontLibrary>("Assets/ScriptableObjects/FontLibrary.asset");
			var fontAsset = library.fonts.First(x => x.name == fontName);

			Array.Sort(items.Select(x => int.Parse(x.name.Split("&")[1])).ToArray(), items);

			for (var i = 0; i < items.Length; i++)
			{
				fontAsset.entries[i].texture = items[i];
			}

			EditorUtility.SetDirty(library);
			AssetDatabase.SaveAssets();
			AssetDatabase.Refresh();
		}*/
	}
}
