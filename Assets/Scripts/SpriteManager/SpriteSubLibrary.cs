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
		public Vector2 Origin;
		public List<Texture2D> SubImages;
		public Texture2D CollisionMask;

		public int PlaybackSpeed;
		public PlaybackSpeedType PlaybackSpeedType;

		[HideInInspector]
		public CollisionMaskPreload CollisionMaskPreload;
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
