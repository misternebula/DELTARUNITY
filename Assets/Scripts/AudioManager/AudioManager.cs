using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.Scripts;
using Assets.VirtualMachineRunner;
using UnityEditor.Search;
using UnityEngine;

namespace Assets.AudioManager
{
	public class AudioInstance
	{
		public AudioAsset Asset;
		public int SoundInstanceId;
		public AudioSource Source;
	}

	public class AudioAsset
	{
		public int AssetIndex;
		public AudioClip Clip;
		public double Gain;
		public double Pitch;
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
				asset.Pitch = 1;
				_audioClips[index] = asset;
			}
		}

		public int RegisterAudioClip(AudioClip clip)
		{
			var index = AssetIndexManager.Instance.Register(AssetType.sounds, clip.name);
			Debug.Log($"Register audioclip {clip.name} with index {index}");
			var asset = new AudioAsset
			{
				Clip = clip,
				AssetIndex = index,
				Gain = 1,
				Pitch = 1
			};
			_audioClips.Add(index, asset);
			return index;
		}

		public void UnregisterAudio(int index)
		{
			if (!_audioClips.ContainsKey(index))
			{
				Debug.Log($"- couldnt find audio asset {index}");
				return;
			}

			var asset = _audioClips[index];
			asset.Clip.UnloadAudioData(); // no idea if this is needed, probably does nothing?
			_audioClips.Remove(index);
			AssetIndexManager.Instance.Unregister(AssetType.sounds, asset.Clip.name);
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

		public AudioInstance GetAudioInstance(int instanceId)
		{
			return _audioSources.FirstOrDefault(x => x.SoundInstanceId == instanceId);
		}

		public AudioInstance[] GetAudioInstances(int assetIndex)
		{
			return _audioSources.Where(x => x.Asset.AssetIndex == assetIndex).ToArray();
		}

		public void SetAssetGain(int assetIndex, double gain)
		{
			_audioClips[assetIndex].Gain = gain;
		}

		public void SetAssetPitch(int assetIndex, double pitch)
		{
			_audioClips[assetIndex].Pitch = pitch;
		}

		public AudioAsset GetAudioAsset(int assetIndex)
		{
			return _audioClips[assetIndex];
		}

		public void StopAllAudio()
		{
			foreach (var item in _audioSources)
			{
				item.Source.Stop();
				Destroy(item.Source);
			}
			_audioSources.Clear();
		}

		private int _highestSoundInstanceId = GMConstants.FIRST_INSTANCE_ID;

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
				Debug.LogError($"AudioDatabase doesn't contain {index}!");
				Debug.Break();
			}

			var newSource = Instantiate(AudioSourcePrefab);
			newSource.name = _audioClips[index].Clip.name;
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
				Asset = _audioClips[index],
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
