using System;
using Assets.RoomManager;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Assets.TextManager;
using Assets.VirtualMachineRunner;
using UnityEngine.TextCore;
using UnityEngine.TextCore.Text;

namespace Assets
{
	internal class GamemakerCamera : MonoBehaviour
	{
		public static GamemakerCamera Instance;

		/// <summary>
		/// The x position of the top left corner of the camera, in unity space.
		/// </summary>
		public int x
		{
			get => (int)transform.position.x - ((int)Room.Instance.ViewSize.x / 2);
			set => SetPosition(new Vector2(value, y));
		}

		/// <summary>
		/// The y position of the top left corner of the camera, in unity space.
		/// </summary>
		public int y
		{
			get => (int)transform.position.y + ((int)Room.Instance.ViewSize.y / 2);
			set => SetPosition(new Vector2(x, value));
		}

		public NewGamemakerObject ObjectToFollow;

		public Material SpriteMaterial;
		public Material TriangleMaterial;
		public Material ScreenMaterial;
		public Material FogMaterial;
		public GameObject Screen;
		public GameObject ScreenCamera;

		public void SetPosition(Vector2 pos)
		{
			var roomViewSize = Room.Instance.ViewSize;

			var nx = (roomViewSize.x / 2) + pos.x;
			var ny = (roomViewSize.y / 2) - pos.y;
			transform.position = new Vector3(nx, -ny, -1000000);
		}

		private int enabletimer = 0;

		public void Awake()
		{
			Instance = this;

			DontDestroyOnLoad(Screen);
			DontDestroyOnLoad(ScreenCamera);

#if UNITY_EDITOR
			var sceneCamera = Resources.FindObjectsOfTypeAll<Camera>().First(x => x.name == "SceneCamera");
			if (sceneCamera != null)
			{
				sceneCamera.gameObject.AddComponent<SceneCameraViewer>();
			}
#endif
		}

		public void OnSceneLoaded()
		{
			//GetComponent<Camera>().enabled = false;
			enabletimer = 0;
		}

		public void FixedUpdate()
		{
			if (enabletimer != 1)
			{
				enabletimer++;
				return;
			}

			//GetComponent<Camera>().enabled = true;

			if (ObjectToFollow == null)
			{
				return;
			}

			var x = ObjectToFollow.x + (ObjectToFollow.sprite_width / 2d);
			var y = ObjectToFollow.y + (ObjectToFollow.sprite_height / 2d);

			var roomWidth = Room.Instance.Size.x;
			var roomHeight = Room.Instance.Size.y;
			var viewWidth = Room.Instance.ViewSize.x;
			var viewHeight = Room.Instance.ViewSize.y;

			if (y - (viewHeight / 2) <= 0) // top of screen
			{
				y = viewHeight / 2;
			}
			else if (y + (viewHeight / 2) >= roomHeight) // bottom of screen
			{
				y = roomHeight - (viewHeight / 2);
			}

			if (x - (viewWidth / 2) <= 0) // left of screen
			{
				x = viewWidth / 2;
			}
			else if (x + (viewWidth / 2) >= roomWidth) // right of screen
			{
				x = roomWidth - (viewWidth / 2);
			}

			transform.position = new Vector3((float)x, -(float)y, transform.position.z);
		}

		public static List<GMBaseJob> RenderJobs = new();
		private static readonly int VertOneColor = Shader.PropertyToID("_VertOneColor");
		private static readonly int VertTwoColor = Shader.PropertyToID("_VertTwoColor");
		private static readonly int VertThreeColor = Shader.PropertyToID("_VertThreeColor");
		private static readonly int VertFourColor = Shader.PropertyToID("_VertFourColor");

		public void OnPostRender()
		{
			RenderGL();
		}

		public static void RenderGL()
		{
			foreach (var item in RenderJobs)
			{
				if (item is GMSpriteJob spriteJob)
				{
					RenderSprite(spriteJob);
				}
				else if (item is GMRectangleJob rectJob)
				{
					RenderRectangle(rectJob);
				}
				else if (item is GMTextJob textJob)
				{
					RenderText(textJob);
				}
				else if (item is GMTriangleJob triangleJob)
				{
					RenderTriangle(triangleJob);
				}
				else if (item is GMLineJob lineJob)
				{
					RenderLine(lineJob);
				}
			}
		}

		private static void RenderSprite(GMSpriteJob spriteJob)
		{
			var screenRect = new Rect(-spriteJob.origin.x, spriteJob.origin.y, spriteJob.texture.width, -spriteJob.texture.height);
			var sourceRect = new Rect(0, 0, 1, 1);

			if (spriteJob is GMSpritePartJob partJob)
			{
				screenRect = new Rect(-spriteJob.origin.x, spriteJob.origin.y, partJob.width, -partJob.height);
				sourceRect = new Rect(partJob.left / spriteJob.texture.width, ((spriteJob.texture.height - partJob.top - partJob.height) / spriteJob.texture.height), partJob.width / spriteJob.texture.width, partJob.height / spriteJob.texture.height);
			}

			GL.PushMatrix();

			var pos = new Vector3(spriteJob.screenPos.x, -spriteJob.screenPos.y, 0);
			var rot = Quaternion.Euler(0, 0, (float)spriteJob.angle);
			var scale = new Vector3(spriteJob.scale.x, spriteJob.scale.y, 0);
			GL.MultMatrix(Matrix4x4.TRS(pos, rot, scale));

			if (spriteJob.fogEnabled)
			{
				Graphics.DrawTexture(
					screenRect,
					spriteJob.texture,
					sourceRect,
					0, 0, 0, 0,
					new Color(spriteJob.fogColor.r, spriteJob.fogColor.g, spriteJob.fogColor.b, (float)spriteJob.alpha),
					Instance.FogMaterial);
			}
			else
			{
				Graphics.DrawTexture(
					screenRect,
					spriteJob.texture,
					sourceRect,
					0, 0, 0, 0,
					new Color(spriteJob.blend.r, spriteJob.blend.g, spriteJob.blend.b, (float)spriteJob.alpha),
					Instance.SpriteMaterial);
			}

			GL.PopMatrix();
		}

		private static void RenderRectangle(GMRectangleJob rectJob)
		{
			GL.PushMatrix();

			var pos = new Vector3(rectJob.screenPos.x, -rectJob.screenPos.y, 0);
			GL.MultMatrix(Matrix4x4.TRS(pos, Quaternion.identity, Vector3.one));

			Instance.TriangleMaterial.SetPass(0);

			GL.Begin(GL.QUADS);
			GL.Color(new Color(rectJob.blend.r, rectJob.blend.g, rectJob.blend.b, (float)rectJob.alpha));
			GL.Vertex3(0, 0, 0);
			GL.Vertex3(rectJob.width, 0, 0);
			GL.Vertex3(rectJob.width, -rectJob.height, 0);
			GL.Vertex3(0, -rectJob.height, 0);
			GL.End();

			GL.PopMatrix();
		}

		private static void RenderText(GMTextJob textJob)
		{
			if (string.IsNullOrEmpty(textJob.text))
			{
				return;
			}

			var lines = textJob.text.Split(Environment.NewLine);
			var longestLineWidth = TextManager.TextManager.StringWidth(textJob.text);
			var textHeight = TextManager.TextManager.StringHeight(textJob.text);

			for (var i = 0; i < lines.Length; i++)
			{
				var line = lines[i];
				var width = TextManager.TextManager.StringWidth(line);

				var xOffset = 0;
				if (textJob.halign == HAlign.center)
				{
					xOffset = -(width / 2);
				}
				else if (textJob.halign == HAlign.right)
				{
					xOffset = -width;
				}

				var yOffset = 0;
				if (textJob.valign == VAlign.middle)
				{
					yOffset = -(textHeight / 2);
				}
				else if (textJob.valign == VAlign.bottom)
				{
					yOffset = -textHeight;
				}

				var lineLeftX = textJob.screenPos.x + xOffset;
				var lineRightX = textJob.screenPos.x + xOffset + width;
				var lineTopY = -textJob.screenPos.y - yOffset;
				var lineBottomY = -textJob.screenPos.y - yOffset - TextManager.TextManager.StringHeight(line);

				float map(float s, float a1, float a2, float b1, float b2)
				{
					return b1 + (s - a1) * (b2 - b1) / (a2 - a1);
				}

				Color LerpBetweenColors(Color leftColor, Color rightColor, float left, float right, float value)
				{
					var distance = map(value, left, right, 0, 1);
					return Color.Lerp(leftColor, rightColor, distance);
				}

				for (var j = 0; j < line.Length; j++)
				{
					var character = line[j];
					
					var material = Instance.TriangleMaterial;
					material.mainTexture = textJob.asset.texture;
					material.SetPass(0);

					GL.PushMatrix();

					var rot = Quaternion.Euler(0, 0, textJob.angle);
					var scale = new Vector3(textJob.scale.x, textJob.scale.y, 0);
					GL.MultMatrix(Matrix4x4.TRS(Vector3.zero, rot, scale));

					if (textJob.asset.texture == null && textJob.asset.spriteIndex != -1)
					{
						var texture = SpriteManager.SpriteManager.GetSprite(textJob.asset.spriteIndex, character);

						var glyphHeight = texture.height;
						var glyphWidth = texture.width;

						Graphics.DrawTexture(
							new Rect(textJob.screenPos.x + xOffset, -textJob.screenPos.y - yOffset, glyphWidth, -glyphHeight),
							texture,
							new Rect(0, 0, 1, 1),
							0, 0, 0, 0,
							new Color(textJob.blend.r, textJob.blend.g, textJob.blend.b, (float)textJob.alpha),
							material);

						xOffset += glyphWidth + textJob.asset.sep;
					}
					else
					{
						if (!textJob.asset.entriesDict.TryGetValue(character, out var glyph))
						{
							continue;
						}

						var texture = textJob.asset.texture;

						var topLeftX = textJob.screenPos.x + xOffset + glyph.offset;
						var topLeftY = -textJob.screenPos.y - yOffset;

						var leftX = glyph.x / (float)texture.width;
						var rightX = (glyph.x + glyph.w) / (float)texture.width;
						var topY = (texture.height - glyph.y) / (float)texture.height;
						var bottomY = (texture.height - glyph.y - glyph.h) / (float)texture.height;

						var c1 = textJob.c1;
						var c2 = textJob.c2;
						var c3 = textJob.c3;
						var c4 = textJob.c4;
						if (!textJob.isColor)
						{
							c1 = c2 = c3 = c4 = new Color(textJob.blend.r, textJob.blend.g, textJob.blend.b, (float)textJob.alpha);
						}

						GL.Begin(GL.QUADS);
						//GL.Color(new Color(textJob.blend.r, textJob.blend.g, textJob.blend.b, (float)textJob.alpha));

						// TODO : this will make the different lines of a string have the gradient applied seperately.

						// top left of letter
						GL.TexCoord2(leftX, topY);
						GL.Color(LerpBetweenColors(c1, c2, lineLeftX, lineRightX, topLeftX));
						GL.Vertex3(topLeftX, topLeftY, 0);

						// top right of letter
						GL.TexCoord2(rightX, topY);
						GL.Color(LerpBetweenColors(c1, c2, lineLeftX, lineRightX, topLeftX + glyph.w));
						GL.Vertex3(topLeftX + glyph.w, topLeftY, 0);

						// bottom right of letter
						GL.TexCoord2(rightX, bottomY);
						GL.Color(LerpBetweenColors(c4, c3, lineLeftX, lineRightX, topLeftX + glyph.w));
						GL.Vertex3(topLeftX + glyph.w, topLeftY - glyph.h, 0);

						// bottom left of letter
						GL.TexCoord2(leftX, bottomY);
						GL.Color(LerpBetweenColors(c4, c3, lineLeftX, lineRightX, topLeftX));
						GL.Vertex3(topLeftX, topLeftY - glyph.h, 0);

						GL.End();

						xOffset += glyph.shift;
					}

					material.mainTexture = null;
					GL.PopMatrix();
				}
			}
		}

		private static void RenderTriangle(GMTriangleJob triangleJob)
		{
			GL.PushMatrix();
			Instance.TriangleMaterial.SetPass(0);
			GL.MultMatrix(Matrix4x4.TRS(new Vector3(0, 0, 0), Quaternion.identity, Vector3.one));
			
			GL.Begin(GL.TRIANGLES);
			GL.Color(new Color(triangleJob.blend.r, triangleJob.blend.g, triangleJob.blend.b, (float)triangleJob.alpha));
			GL.Vertex3(triangleJob.firstCorner.x, -triangleJob.firstCorner.y, 0);
			GL.Vertex3(triangleJob.secondCorner.x, -triangleJob.secondCorner.y, 0);
			GL.Vertex3(triangleJob.thirdCorner.x, -triangleJob.thirdCorner.y, 0);
			GL.End();

			GL.PopMatrix();
		}

		private static void RenderLine(GMLineJob lineJob)
		{
			var plotCoords = GetLinePoints(lineJob.start, lineJob.end, lineJob.width);

			GL.PushMatrix();
			Instance.TriangleMaterial.SetPass(0);
			GL.MultMatrix(Matrix4x4.TRS(new Vector3(0, 0, 0), Quaternion.identity, Vector3.one));
			GL.Begin(GL.QUADS);
			GL.Color(new Color(lineJob.blend.r, lineJob.blend.g, lineJob.blend.b, (float)lineJob.alpha));

			for (var i = 0; i < plotCoords.Count; i++)
			{
				var start = plotCoords[i];
				GL.Vertex3(start.x, -start.y, 0);
				GL.Vertex3(start.x + 1, -start.y, 0);
				GL.Vertex3(start.x + 1, -start.y - 1, 0);
				GL.Vertex3(start.x, -start.y - 1, 0);
			}

			GL.End();
			GL.PopMatrix();
		}

		public void OnDrawGizmos()
		{
			if (ObjectToFollow == null)
			{
				return;
			}

			Gizmos.DrawWireCube(new Vector3((float)(ObjectToFollow.x + (ObjectToFollow.sprite_width / 2)), (float)-(ObjectToFollow.y + (ObjectToFollow.sprite_height / 2)), 0), new Vector3(Room.Instance.ViewSize.x, Room.Instance.ViewSize.y, 1));
		}

		private const int LINE_OVERLAP_NONE = 0;
		private const int LINE_OVERLAP_MAJOR = 0x01;
		private const int LINE_OVERLAP_MINOR = 0x02;

		/*
		 * Line drawing algorithms from :
		 * https://github.com/ArminJo/Arduino-BlueDisplay/blob/master/src/LocalGUI/ThickLine.hpp
		 *
		 * Copyright (C) 2013-2022  Armin Joachimsmeyer
		 *  armin.joachimsmeyer@gmail.com
		 */

		private static List<Vector2Int> drawLineOverlap(int aXStart, int aYStart, int aXEnd, int aYEnd, int aOverlap)
		{
			var pixels = new List<Vector2Int>();

			int tDeltaX, tDeltaY, tDeltaXTimes2, tDeltaYTimes2, tError, tStepX, tStepY;

			// calculate direction
			tDeltaX = aXEnd - aXStart;
			tDeltaY = aYEnd - aYStart;

			if (tDeltaX < 0) {
				tDeltaX = -tDeltaX;
				tStepX = -1;
			} else {
				tStepX = +1;
			}

			if (tDeltaY < 0) {
				tDeltaY = -tDeltaY;
				tStepY = -1;
			} else {
				tStepY = +1;
			}
			tDeltaXTimes2 = tDeltaX << 1;
			tDeltaYTimes2 = tDeltaY << 1;
			// draw start pixel
			pixels.Add(new Vector2Int(aXStart, aYStart));
			if (tDeltaX > tDeltaY) {
				// start value represents a half step in Y direction
				tError = tDeltaYTimes2 - tDeltaX;
				while (aXStart != aXEnd) {
					// step in main direction
					aXStart += tStepX;
					if (tError >= 0) {
						if (aOverlap == LINE_OVERLAP_MAJOR) {
							// draw pixel in main direction before changing
							pixels.Add(new Vector2Int(aXStart, aYStart));
						}
						// change Y
						aYStart += tStepY;
						if (aOverlap == LINE_OVERLAP_MINOR) {
							// draw pixel in minor direction before changing
							pixels.Add(new Vector2Int(aXStart - tStepX, aYStart));
						}
						tError -= tDeltaXTimes2;
					}
					tError += tDeltaYTimes2;
					pixels.Add(new Vector2Int(aXStart, aYStart));
				}
			} else {
				tError = tDeltaXTimes2 - tDeltaY;
				while (aYStart != aYEnd) {
					aYStart += tStepY;
					if (tError >= 0) {
						if (aOverlap == LINE_OVERLAP_MAJOR) {
							// draw pixel in main direction before changing
							pixels.Add(new Vector2Int(aXStart, aYStart));
						}
						aXStart += tStepX;
						if (aOverlap == LINE_OVERLAP_MINOR) {
							// draw pixel in minor direction before changing
							pixels.Add(new Vector2Int(aXStart, aYStart - tStepY));
						}
						tError -= tDeltaYTimes2;
					}
					tError += tDeltaXTimes2;
					pixels.Add(new Vector2Int(aXStart, aYStart));
				}
			}

			return pixels;
		}

		private static List<Vector2Int> GetLinePoints(Vector2 start, Vector2 end, int aThickness)
		{
			var pixels = new List<Vector2Int>();

			int i, tDeltaX, tDeltaY, tDeltaXTimes2, tDeltaYTimes2, tError, tStepX, tStepY;

			var aXStart = (int)start.x;
			var aYStart = (int)start.y;
			var aXEnd = (int)end.x;
			var aYEnd = (int)end.y;

			/*
		     * For coordinate system with 0.0 top left
		     * Swap X and Y delta and calculate clockwise (new delta X inverted)
		     * or counterclockwise (new delta Y inverted) rectangular direction.
		     * The right rectangular direction for LINE_OVERLAP_MAJOR toggles with each octant
		     */
			tDeltaY = aXEnd - aXStart;
			tDeltaX = aYEnd - aYStart;
			// mirror 4 quadrants to one and adjust deltas and stepping direction
			bool tSwap = true; // count effective mirroring
			if (tDeltaX < 0) {
				tDeltaX = -tDeltaX;
				tStepX = -1;
				tSwap = !tSwap;
			} else {
				tStepX = +1;
			}
			if (tDeltaY < 0)
			{
				tDeltaY = -tDeltaY;
				tStepY = -1;
				tSwap = !tSwap;
			} else {
				tStepY = +1;
			}

			tDeltaXTimes2 = tDeltaX << 1;
			tDeltaYTimes2 = tDeltaY << 1;

			int tOverlap;
			// adjust for right direction of thickness from line origin
			int tDrawStartAdjustCount = aThickness / 2;

			/*
			 * Now tDelta* are positive and tStep* define the direction
			 * tSwap is false if we mirrored only once
			 */
			// which octant are we now
			if (tDeltaX >= tDeltaY) {
				// Octant 1, 3, 5, 7 (between 0 and 45, 90 and 135, ... degree)
				if (tSwap) {
					tDrawStartAdjustCount = (aThickness - 1) - tDrawStartAdjustCount;
					tStepY = -tStepY;
				} else {
					tStepX = -tStepX;
				}
				/*
				 * Vector for draw direction of the starting points of lines is rectangular and counterclockwise to main line direction
				 * Therefore no pixel will be missed if LINE_OVERLAP_MAJOR is used on change in minor rectangular direction
				 */
				// adjust draw start point
				tError = tDeltaYTimes2 - tDeltaX;
				for (i = tDrawStartAdjustCount; i > 0; i--) {
					// change X (main direction here)
					aXStart -= tStepX;
					aXEnd -= tStepX;
					if (tError >= 0) {
						// change Y
						aYStart -= tStepY;
						aYEnd -= tStepY;
						tError -= tDeltaXTimes2;
					}
					tError += tDeltaYTimes2;
				}
				// draw start line.
				pixels.AddRange(drawLineOverlap(aXStart, aYStart, aXEnd, aYEnd, LINE_OVERLAP_NONE));
				// draw aThickness number of lines
				tError = tDeltaYTimes2 - tDeltaX;
				for (i = aThickness; i > 1; i--) {
					// change X (main direction here)
					aXStart += tStepX;
					aXEnd += tStepX;
					tOverlap = LINE_OVERLAP_NONE;
					if (tError >= 0) {
						// change Y
						aYStart += tStepY;
						aYEnd += tStepY;
						tError -= tDeltaXTimes2;
						/*
						 * Change minor direction reverse to line (main) direction
						 * because of choosing the right (counter)clockwise draw vector
						 * Use LINE_OVERLAP_MAJOR to fill all pixel
						 *
						 * EXAMPLE:
						 * 1,2 = Pixel of first 2 lines
						 * 3 = Pixel of third line in normal line mode
						 * - = Pixel which will additionally be drawn in LINE_OVERLAP_MAJOR mode
						 *           33
						 *       3333-22
						 *   3333-222211
						 * 33-22221111
						 *  221111                     /\
						 *  11                          Main direction of start of lines draw vector
						 *  -> Line main direction
						 *  <- Minor direction of counterclockwise of start of lines draw vector
						 */
						tOverlap = LINE_OVERLAP_MAJOR;
					}
					tError += tDeltaYTimes2;
					pixels.AddRange(drawLineOverlap(aXStart, aYStart, aXEnd, aYEnd, tOverlap));
				}
			}
			else
			{
				// the other octant 2, 4, 6, 8 (between 45 and 90, 135 and 180, ... degree)
				if (tSwap) {
					tStepX = -tStepX;
				} else {
					tDrawStartAdjustCount = (aThickness - 1) - tDrawStartAdjustCount;
					tStepY = -tStepY;
				}
				// adjust draw start point
				tError = tDeltaXTimes2 - tDeltaY;
				for (i = tDrawStartAdjustCount; i > 0; i--) {
					aYStart -= tStepY;
					aYEnd -= tStepY;
					if (tError >= 0) {
						aXStart -= tStepX;
						aXEnd -= tStepX;
						tError -= tDeltaYTimes2;
					}
					tError += tDeltaXTimes2;
				}
				//draw start line
				pixels.AddRange(drawLineOverlap(aXStart, aYStart, aXEnd, aYEnd, LINE_OVERLAP_NONE));
				// draw aThickness number of lines
				tError = tDeltaXTimes2 - tDeltaY;
				for (i = aThickness; i > 1; i--) {
					aYStart += tStepY;
					aYEnd += tStepY;
					tOverlap = LINE_OVERLAP_NONE;
					if (tError >= 0) {
						aXStart += tStepX;
						aXEnd += tStepX;
						tError -= tDeltaYTimes2;
						tOverlap = LINE_OVERLAP_MAJOR;
					}
					tError += tDeltaXTimes2;
					pixels.AddRange(drawLineOverlap(aXStart, aYStart, aXEnd, aYEnd, tOverlap));
				}
			}

			return pixels;
		}
	}

	public class GMLineJob : GMBaseJob
	{
		public Vector2 start;
		public Vector2 end;
		public int width;
	}

	public class GMTriangleJob : GMBaseJob
	{
		public Vector2 firstCorner;
		public Vector2 secondCorner;
		public Vector3 thirdCorner;
	}

	public class GMSpriteJob : GMBaseJob
	{
		public Vector2 screenPos;
		public Texture texture;
		public Vector2 scale;
		public double angle;
		public Vector2 origin;
	}

	public class GMSpritePartJob : GMSpriteJob
	{
		public float left;
		public float top;
		public float width;
		public float height;
	}

	public class GMRectangleJob : GMBaseJob
	{
		public Vector2 screenPos;
		public float width;
		public float height;
	}

	public class GMTextJob : GMBaseJob
	{
		public Vector2 screenPos;
		public string text;
		public Vector2 scale;
		public HAlign halign;
		public VAlign valign;
		public float angle;
		public bool isColor;
		public Color c1 = Color.white;
		public Color c2 = Color.white;
		public Color c3 = Color.white;
		public Color c4 = Color.white;
		public FontAsset asset;
		public int sep;
	}

	public class GMBaseJob
	{
		public Color blend;
		public double alpha;
		public Color fogColor;
		public bool fogEnabled;
	}
}
