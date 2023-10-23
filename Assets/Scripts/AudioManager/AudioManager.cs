using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.AudioManager
{
	internal class AudioManager : MonoBehaviour
	{
		public static AudioManager Instance { get; private set; }

		public int AudioChannelNum = 128;
		public GameObject AudioSourcePrefab;

		public AudioDatabase AudioDatabase;

		private List<AudioSource> _audioSources = new();
		private Dictionary<string, AudioClip> _audioClips = new();

		private void Start()
		{
			Instance = this;

			DontDestroyOnLoad(this);

			foreach (var item in AudioDatabase.SoundClips)
			{
				_audioClips[item.name] = item;
			}
		}

		private void Update()
		{
			var toRemove = new List<AudioSource>();
			foreach (var item in _audioSources)
			{
				if (item == null)
				{
					toRemove.Add(item);
					continue;
				}

				if (item.time >= item.clip.length)
				{
					toRemove.Add(item);
					Destroy(item.gameObject);
				}
			}

			_audioSources = _audioSources.Except(toRemove).ToList();
		}

		public AudioSource[] GetAudioSources(string name)
		{
			return _audioSources.Where(x => x.clip.name == name).ToArray();
		}

		public AudioSource PlaySound(string name, int priority, bool loop) => PlaySound(name, priority, loop, 1.0f, 0.0f, 1.0f);

		public AudioSource PlaySound(string name, int priority, bool loop, float gain, float offset, float pitch)
		{
			if (_audioSources.Count == AudioChannelNum)
			{
				var oldSource = _audioSources.OrderBy(x => x.priority).First();

				Debug.Log($"Went over audio source limit - re-using source playing {oldSource.clip.name}");

				oldSource.clip = _audioClips[name];
				oldSource.loop = loop;
				oldSource.volume = gain;
				oldSource.time = offset;
				oldSource.pitch = pitch;
				oldSource.priority = priority;
				oldSource.Play();

				return oldSource;
			}

			if (name == null || !_audioClips.ContainsKey(name))
			{
				Debug.LogError($"AudioDatabase doesn't contain {name}!");
				name = "snd_error";
			}

			var newSource = Instantiate(AudioSourcePrefab);
			newSource.name = name;
			DontDestroyOnLoad(newSource);
			var source = newSource.GetComponent<AudioSource>();
			source.clip = _audioClips[name];
			source.loop = loop;
			source.volume = gain;
			source.time = offset;
			source.pitch = pitch;
			source.priority = priority;
			source.Play();

			_audioSources.Add(source);

			return source;
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

		public void StopAllAudio()
		{
			foreach (var item in _audioSources)
			{
				item.Stop();
				Destroy(item);
			}
		}

		public void snd_free_all()
		{
			foreach (var item in _audioSources)
			{
				item.Stop();
				Destroy(item);
			}

			_audioSources.Clear();
		}

		public void audio_stop_sound(string id)
		{
			foreach (var item in _audioSources)
			{
				if (item.clip.name == id)
				{
					item.Stop();
					Destroy(item);
				}
			}
		}
	}
}
