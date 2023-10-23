using System.Collections.Generic;
using UnityEngine;

namespace Assets.SpriteManager
{
	[CreateAssetMenu(fileName = "SpriteDatabase", menuName = "ScriptableObjects/Sprite Database", order = 2)]
	public class CustomSpriteLibrary : ScriptableObject
	{
		public List<SpriteSubLibrary> Sprites;
	}
}
