using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.AudioManager
{
	[CreateAssetMenu(fileName = "AudioDatabase", menuName ="ScriptableObjects/Audio Database", order = 1)]
	public class AudioDatabase : ScriptableObject
	{
		public List<AudioClip> SoundClips;
	}
}
