using System;
using Assets;
using Assets.RoomManager;
using Assets.SpriteManager;
using UnityEngine;

public class GMBackground : DrawWithDepth
{
	public bool Visible = true;
	public bool Foreground;
	public int sprite;
	public bool HTiled;
	public bool VTiled;
	public bool Stretch;
	public double XScale = 1;
	public double YScale = 1;
	public int Color = 16777215;
	public double Alpha = 1;
	public int FirstFrame;
	public int AnimationSpeed;
	public PlaybackSpeedType AnimationType;

	private GMLayer _layer;

	public override void Draw()
	{
		if (sprite == -1)
		{
			return;
		}

		if (!HTiled && !VTiled)
		{
			SpriteManager.DrawSprite(sprite, 0, _layer.X, _layer.Y);
			return;
		}

		var spriteAsset = SpriteManager.GetSpriteAsset(sprite);
		var spriteWidth = spriteAsset.SubImages[0].width;
		var spriteHeight = spriteAsset.SubImages[0].height;
		var distToCameraLeft = _layer.X - GamemakerCamera.Instance.x;
		var distToCameraTop = _layer.Y + GamemakerCamera.Instance.y;

		// bug : this will always draw 1 extra to the right and down, even when not needed (like backgrounds that fill the room)
		// probably just missing some simple math

		if (HTiled && !VTiled) // only horizontal
		{
			var ceilingToMultipleOfWidth = (int)Math.Ceiling(distToCameraLeft / spriteWidth) * spriteWidth;

			for (
				var i = 0; 
				i < Math.Ceiling(Room.Instance.ViewSize.x / spriteWidth) + 1;
				i++)
			{
				SpriteManager.DrawSprite(sprite, 0, _layer.X - ceilingToMultipleOfWidth + (i * spriteWidth), _layer.Y);
			}
		}
		else if (!HTiled && VTiled) // only vertical
		{
			var ceilingToMultipleOfHeight = (int)Math.Ceiling(distToCameraTop / spriteHeight) * spriteHeight;

			for (
				var i = 0;
				i < Math.Ceiling(Room.Instance.ViewSize.y / spriteHeight) + 1;
				i++)
			{
				SpriteManager.DrawSprite(sprite, 0, _layer.X, _layer.Y - ceilingToMultipleOfHeight + (i * spriteHeight));
			}
		}
		else // both horizontal and vertical
		{
			var ceilingToMultipleOfWidth = (int)Math.Ceiling(distToCameraLeft / spriteWidth) * spriteWidth;
			var ceilingToMultipleOfHeight = (int)Math.Ceiling(distToCameraTop / spriteHeight) * spriteHeight;

			for (
				var i = 0;
				i < Math.Ceiling(Room.Instance.ViewSize.y / spriteHeight) + 1;
				i++)
			{
				for (
					var j = 0;
					j < Math.Ceiling(Room.Instance.ViewSize.x / spriteWidth) + 1;
					j++)
				{
					SpriteManager.DrawSprite(sprite, 0, _layer.X - ceilingToMultipleOfWidth + (j * spriteWidth), _layer.Y - ceilingToMultipleOfHeight + (i * spriteHeight));
				}
			}
		}
	}

	private void Awake()
	{
		_layer = GetComponent<GMLayer>();
		DrawManager.Register(this);
	}

	private void OnDestroy()
	{
		DrawManager.Unregister(this);
	}
}