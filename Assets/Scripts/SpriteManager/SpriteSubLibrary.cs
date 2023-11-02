using Assets.CollisionManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.SpriteManager
{
	[CreateAssetMenu(fileName = "SpriteSubLibrary", menuName = "ScriptableObjects/Sprite Sub-Database", order = 3)]
	public class SpriteSubLibrary : ScriptableObject
	{
		public Vector4 Margins;
		public BoundingBoxMode BoundingBoxMode;
		public SepMasks SepMasks;
		public Vector2Int Origin;
		public List<Texture2D> SubImages = new List<Texture2D>();
		public List<Texture2D> CollisionMasks = new List<Texture2D>();

		public int PlaybackSpeed;
		public PlaybackSpeedType PlaybackSpeedType;

		[HideInInspector]
		public List<CollisionMaskPreload> CollisionMaskPreloads = new List<CollisionMaskPreload>();
	}

	[Serializable]
	public class CollisionMaskPreload
	{
		public int Width;
		public int Height;
		public bool[] Data;
	}

	public enum PlaybackSpeedType
	{
		FramesPerSecond,
		FramesPerGameFrame
	}
}
