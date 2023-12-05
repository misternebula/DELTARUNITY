using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.Scripts;
using UnityEngine;

namespace Assets.AudioManager
{
	public class AudioInstance
	{
		public int SoundInstanceId;
		public AudioSource Source;
	}

	public class AudioAsset
	{
		public int AssetIndex;
		public AudioClip Clip;
		public double Gain;
	}

	internal class AudioManager : MonoBehaviour
	{
		public static AudioManager Instance { get; private set; }

		public int AudioChannelNum = 128;
		public GameObject AudioSourcePrefab;

		public AudioDatabase AudioDatabase;

		private List<AudioInstance> _audioSources = new();
		private Dictionary<int, AudioAsset> _audioClips = new();

		private void Start()
		{
			Instance = this;

			DontDestroyOnLoad(this);

			foreach (var item in AudioDatabase.SoundClips)
			{
				var index = AssetIndexManager.Instance.GetIndex(item.name);
				var asset = new AudioAsset();
				asset.Clip = item;
				asset.AssetIndex = index;
				asset.Gain = 1; // TODO : get initial volume and pitch from DATA.WIN
				_audioClips[index] = asset;
			}
		}

		public int RegisterAudioClip(AudioClip clip)
		{
			var index = AssetIndexManager.Instance.Register(AssetType.sounds, clip.name);
			var asset = new AudioAsset();
			asset.Clip = clip;
			asset.AssetIndex = index;
			asset.Gain = 1;
			_audioClips.Add(index, asset);
			return index;
		}

		private void Update()
		{
			var toRemove = new List<AudioInstance>();
			foreach (var item in _audioSources)
			{
				if (item == null || item.Source == null)
				{
					toRemove.Add(item);
					continue;
				}

				if (item.Source.time >= item.Source.clip.length)
				{
					toRemove.Add(item);
					Destroy(item.Source.gameObject);
				}
			}

			_audioSources = _audioSources.Except(toRemove).ToList();
		}

		public AudioSource[] GetAudioSources(string name)
		{
			return _audioSources.Select(x => x.Source).Where(x => x.clip.name == name).ToArray();
		}

		public void SetAssetGain(int assetIndex, double gain)
		{
			_audioClips[assetIndex].Gain = gain;
		}

		public AudioAsset GetAudioAsset(int assetIndex)
		{
			return _audioClips[assetIndex];
		}

		private int _highestSoundInstanceId = 100000;

		public int audio_play_sound(int index, int priority, bool loop, double gain, double offset, double pitch)
		{
			//var name = AssetIndexManager.Instance.GetName(AssetType.sounds, index);

			if (_audioSources.Count == AudioChannelNum)
			{
				var oldSourceInstance = _audioSources.OrderBy(x => x.Source.priority).First();
				var oldSource = oldSourceInstance.Source;

				Debug.Log($"Went over audio source limit - re-using source playing {oldSource.clip.name}");

				oldSource.Stop();
				oldSource.clip = _audioClips[index].Clip;
				oldSource.loop = loop;
				oldSource.volume = (float)gain;
				oldSource.time = (float)offset;
				oldSource.pitch = (float)pitch;
				oldSource.priority = priority;
				oldSource.Play();

				oldSourceInstance.SoundInstanceId = ++_highestSoundInstanceId;

				return oldSourceInstance.SoundInstanceId;
			}

			if (index == -1 || !_audioClips.ContainsKey(index))
			{
				Debug.LogError($"AudioDatabase doesn't contain {name}!");
				Debug.Break();
			}

			var newSource = Instantiate(AudioSourcePrefab);
			newSource.name = name;
			DontDestroyOnLoad(newSource);
			var source = newSource.GetComponent<AudioSource>();
			source.clip = _audioClips[index].Clip;
			source.loop = loop;
			source.volume = (float)gain;
			source.time = (float)offset;
			source.pitch = (float)pitch;
			source.priority = priority;
			source.Play();

			var instance = new AudioInstance
			{
				SoundInstanceId = ++_highestSoundInstanceId,
				Source = source
			};

			_audioSources.Add(instance);

			return instance.SoundInstanceId;
		}

		public void ChangeGain(AudioSource source, double volume, double milliseconds)
		{
			StartCoroutine(LerpGain(source, volume, milliseconds / 1000));
		}

		private IEnumerator LerpGain(AudioSource source, double volume, double duration)
		{
			if (source == null)
			{
				yield break;
			}

			float timeElapsed = 0;
			float start = source.volume;
			while (timeElapsed < duration)
			{
				source.volume = Mathf.Lerp(start, (float)volume, (float)(timeElapsed / duration));
				timeElapsed += Time.deltaTime;
				yield return null;
			}
			source.volume = (float)volume;
		}
	}
}
