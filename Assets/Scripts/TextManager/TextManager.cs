﻿using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using UnityEngine;

namespace Assets.TextManager
{
	public enum HAlign
	{
		left,
		center,
		right
	}

	public enum VAlign
	{
		top,
		middle,
		bottom
	}

	public class TextManager : MonoBehaviour
	{
		public static TextManager instance;

		public Dictionary<string, string> Ch1EnLang;
		public FontLibrary FontLibrary;
		public List<FontAsset> FontAssets = new();
		public static FontAsset fontAsset;

		public static HAlign halign;
		public static VAlign valign;

		public void Awake()
		{
			instance = this;
			FontAssets.AddRange(FontLibrary.fonts.ToList());

			foreach (var item in FontAssets)
			{
				item.entriesDict = item.entries.ToDictionary(x => x.characterIndex);
			}

			var textAsset = Resources.Load("lang_en") as TextAsset;
			var text = textAsset.text;

			Ch1EnLang = JsonConvert.DeserializeObject<Dictionary<string, string>>(text);
		}

		public static int StringWidth(string text)
		{
			var lines = text.Split(Environment.NewLine);

			var longestLine = 0;
			foreach (var line in lines)
			{
				var totalWidth = 0;
				for (var i = 0; i < line.Length; i++)
				{
					var asciiIndex = (int)line[i];

					if (!fontAsset.entriesDict.TryGetValue(asciiIndex, out var entry))
					{
						continue;
					}

					if (i == line.Length - 1)
					{
						totalWidth += entry.w + entry.offset;
					}
					else
					{
						totalWidth += entry.shift;
					}
				}

				if (totalWidth > longestLine)
				{
					longestLine = totalWidth;
				}
			}

			return longestLine;
		}

		public static int StringHeight(string text)
		{
			var lines = text.Split(Environment.NewLine);

			// get tallest character in last line
			var tallestChar = 0;
			foreach (var character in lines[^1])
			{
				if (!fontAsset.entriesDict.TryGetValue(character, out var glyph))
				{
					continue;
				}

				var height = glyph.h;

				if (height > tallestChar)
				{
					tallestChar = height;
				}
			}

			return ((lines.Length - 1) * FontHeight()) + tallestChar;
		}

		public static int FontHeight()
		{
			if (fontAsset.entriesDict.TryGetValue(77, out var glyph))
			{
				return glyph.h;
			}

			return fontAsset.entries[0].h;
		}

		public static void DrawText(double x, double y, string text)
		{
			DrawTextTransformed(x, y, text, 1, 1, 0);
		}

		public static void DrawTextColor(double x, double y, string text, int c1, int c2, int c3, int c4, double alpha)
		{
			GamemakerCamera.RenderJobs.Add(new GMTextJob()
			{
				text = text,
				screenPos = new Vector2((float)x, (float)y),
				blend = SpriteManager.SpriteManager.DrawColor.BGRToColor(),
				alpha = alpha,
				halign = halign,
				valign = valign,
				scale = Vector3.one,
				angle = 0,
				isColor = true,
				c1 = c1.BGRToColor(),
				c2 = c2.BGRToColor(),
				c3 = c3.BGRToColor(),
				c4 = c4.BGRToColor(),
				asset = fontAsset,
				// gamemaker is weird
				// "A value of -1 for the line separation argument will default to a separation based on the height of the "M" character in the chosen font."
				sep = FontHeight()
			});
		}

		public static void DrawTextTransformed(double x, double y, string text, double xscale, double yscale, double angle)
		{
			GamemakerCamera.RenderJobs.Add(new GMTextJob()
			{
				text = text,
				screenPos = new Vector2((float)x, (float)y),
				blend = SpriteManager.SpriteManager.DrawColor.BGRToColor(),
				alpha = SpriteManager.SpriteManager.DrawAlpha,
				halign = halign,
				valign = valign,
				scale = new Vector2((float)xscale, (float)yscale),
				angle = (float)angle,
				asset = fontAsset,
				// gamemaker is weird
				// "A value of -1 for the line separation argument will default to a separation based on the height of the "M" character in the chosen font."
				sep = FontHeight()
			});
		}
	}
}
