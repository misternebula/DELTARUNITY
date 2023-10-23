﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Serialization;

namespace Assets
{
	[Serializable]
	public class FontAsset
	{
		public string name;
		public int size;

		/// <summary>
		/// only used for sprite-based fonts
		/// </summary>
		public int sep;

		/// <summary>
		/// The sprite index for the font if it was created from a sprite, otherwise null
		/// </summary>
		public string spriteIndex;

		/// <summary>
		/// null if the font was created from a sprite, otherwise the texture asset of the font
		/// </summary>
		public Texture texture;

		public List<Glyph> entries = new();
		public Dictionary<int, Glyph> entriesDict = new();
	}

	[Serializable]
	public class Glyph
	{
		/// <summary>
		/// If the font was created from a sprite, this will be the image index of the glyph from that sprite, otherwise it will be its Unicode character number
		/// </summary>
		public int characterIndex;

		// Note: All variables below this will not be present in the struct if the font was created from a sprite

		/// <summary>
		/// The X position of the glyph on the texture page (in texels)
		/// </summary>
		public int x;

		/// <summary>
		/// The Y position of the glyph on the texture page (in texels)
		/// </summary>
		public int y;

		/// <summary>
		/// The width of the glyph on the texture page (in texels)
		/// </summary>
		public int w;

		/// <summary>
		/// The height of the glyph on the texture page (in texels)
		/// </summary>
		public int h;

		/// <summary>
		/// The number of pixels to shift right when advancing to the next character.
		/// </summary>
		public int shift;

		/// <summary>
		/// The number of pixels to horizontally offset the rendering of the glyph.
		/// </summary>
		public int offset; 
	}

	[CreateAssetMenu(fileName = "FontLibrary", menuName = "ScriptableObjects/Font Library", order = 3)]
	public class FontLibrary : ScriptableObject
	{
		public List<FontAsset> fonts;
	}
}
