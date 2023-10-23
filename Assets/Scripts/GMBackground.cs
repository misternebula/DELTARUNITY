using System;
using Assets;
using Assets.RoomManager;
using Assets.SpriteManager;
using UnityEngine;

public class GMBackground : DrawWithDepth
{
	public bool Visible = true;
	public bool Foreground;
	public string sprite;
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
		if (string.IsNullOrEmpty(sprite))
		{
			return;
		}

		if (!HTiled && !VTiled)
		{
			SpriteManager.DrawSprite(sprite, 0, _layer.X, _layer.Y);
		}
		else if (HTiled && !VTiled)
		{
			var spriteAsset = SpriteManager.GetSpriteAsset(sprite);
			var spriteWidth = spriteAsset.SubImages[0].width;
			var distToCameraEdge = _layer.X - GamemakerCamera.Instance.x;
			var ceilingToMultipleOfWidth = (int)Math.Ceiling(distToCameraEdge / spriteWidth) * spriteWidth;

			for (
				var i = 0; 
				i < Math.Ceiling(Room.Instance.ViewSize.x / spriteWidth) + 1;
				i++)
			{
				SpriteManager.DrawSprite(sprite, 0, _layer.X - ceilingToMultipleOfWidth + (i * spriteWidth), _layer.Y);
			}
		}
		else if (!HTiled && VTiled)
		{
			// the math for this is easy i just cant be bothered
			throw new NotImplementedException("VTiling not implemented yet");
		}
		else
		{
			// the math for this is easy i just cant be bothered
			throw new NotImplementedException("VTiling and HTiling together not implemented yet");
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