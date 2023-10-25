using Newtonsoft.Json;
using System.Drawing;
using System.Drawing.Imaging;
using UndertaleModLib;
using UndertaleModLib.Models;
using UndertaleModLib.Util;

namespace DeltaruneExporter;

internal class Program
{
	static void Main(string[] args)
	{
		var gamePath = args[0];
		var exportDir = args[1];
		//var gamePath = @"F:\SURVEY_PROGRAM\data.win";
		//var exportDir = @"C:\Users\Henry\Downloads\DELTARUNE EXPORT";

		var data = UndertaleIO.Read(new FileStream(gamePath, FileMode.Open, FileAccess.Read));
		var di = new DirectoryInfo(exportDir);

		Console.WriteLine($"Clearing output directory...");

		foreach (var dir in di.GetFiles())
		{
			dir.Delete();
		}
		foreach (var dir in di.GetDirectories())
		{
			dir.Delete(true);
		}

		Console.Write($"Exporting sprites... ");

		Directory.CreateDirectory($@"{exportDir}\Sprites");
		var progress = new ProgressBar();

		Dictionary<string, Bitmap> pageBitmaps = new Dictionary<string, Bitmap>();

		foreach (var sprite in data.Sprites)
		{
			var dir = @$"{exportDir}\Sprites\{sprite.Name.Content}";
			Directory.CreateDirectory(dir);

			progress.Report((data.Sprites.IndexOf(sprite) + 1.0) / data.Sprites.Count);

			if (sprite.Textures == null || sprite.Textures.Count == 0)
			{
				continue;
			}

			foreach (var texture in sprite.Textures)
			{
				var pageName = texture.Texture.TexturePage.Name.Content;
				if (!pageBitmaps.ContainsKey(pageName))
				{
					var blob = texture.Texture.TexturePage.TextureData.TextureBlob;
					var texPath = @$"{exportDir}\{pageName}.png";
					File.WriteAllBytes(texPath, blob);
					pageBitmaps.Add(pageName, new Bitmap(texPath));
				}

				var originX = texture.Texture.SourceX;
				var originY = texture.Texture.SourceY;
				var height = texture.Texture.SourceHeight;
				var width = texture.Texture.SourceWidth;

				var bitmap = pageBitmaps[pageName];
				var rectangle = new Rectangle(originX, originY, width, height);
				var subtexture = bitmap.Clone(rectangle, bitmap.PixelFormat);
				subtexture.Save(@$"{dir}\{sprite.Name.Content}_{sprite.Textures.IndexOf(texture)}.png", ImageFormat.Png);
				subtexture.Dispose();
			}

			Directory.CreateDirectory($@"{dir}\masks");

			// export collision masks
			foreach (var mask in sprite.CollisionMasks)
			{
				TextureWorker.ExportCollisionMaskPNG(sprite, mask, $@"{dir}\masks\{sprite.Name.Content}_mask_{sprite.CollisionMasks.IndexOf(mask)}.png");
			}

			var spriteData = new SpriteData
			{
				name = sprite.Name.Content,
				boundingBoxMode = (int)sprite.BBoxMode,
				sepMasks = (int)sprite.SepMasks,
				originX = sprite.OriginX,
				originY = sprite.OriginY,
				animationSpeed = sprite.GMS2PlaybackSpeed,
				animationType = (int)sprite.GMS2PlaybackSpeedType,
				marginTop = sprite.MarginTop,
				marginBottom = sprite.MarginBottom,
				marginLeft = sprite.MarginLeft,
				marginRight = sprite.MarginRight
			};

			var json = JsonConvert.SerializeObject(spriteData);
			File.WriteAllText($@"{dir}\data.json", json);
		}

		foreach (var item in pageBitmaps.Values)
		{
			item.Dispose();
		}

		progress.Report(1);
		progress.Dispose();
		Console.WriteLine($"Done!");

		Console.Write($"Exporting internal sounds... ");

		Directory.CreateDirectory($@"{exportDir}\Sounds");
		progress = new ProgressBar();
		string loadedPath = "";
		UndertaleData audioGroupData = null;

		for (var i = 0; i < data.Sounds.Count; i++)
		{
			var sound = data.Sounds[i];

			progress.Report((i + 1.0) / data.Sounds.Count);

			if ((sound.Flags & UndertaleSound.AudioEntryFlags.IsEmbedded) != UndertaleSound.AudioEntryFlags.IsEmbedded &&
			    (sound.Flags & UndertaleSound.AudioEntryFlags.IsCompressed) != UndertaleSound.AudioEntryFlags.IsCompressed)
			{
				try
				{
					string filename;
					if (!sound.File.Content.Contains("."))
						filename = sound.File.Content + ".ogg";
					else
						filename = sound.File.Content;
					var audioPath = Path.Combine(Path.GetDirectoryName(gamePath), filename);
					var bytes = File.ReadAllBytes(audioPath);
					if (File.Exists(audioPath))
					{
						File.WriteAllBytes($@"{exportDir}\Sounds\{sound.Name.Content}{Path.GetExtension(filename).ToLower()}", bytes);
					}
					else
						throw new Exception("Failed to find audio file.");
				}
				catch (Exception e)
				{
					Console.WriteLine("Failed to find audio.");
				}

				continue;
			}

			UndertaleEmbeddedAudio target = null;
			if (sound.GroupID != 0 && sound.AudioID != -1)
			{
				try
				{
					var dataDirectory = Path.GetDirectoryName(gamePath);
					var audioGroupPath = $@"{dataDirectory}\audiogroup{sound.GroupID}.dat";
					if (File.Exists(audioGroupPath))
					{
						if (loadedPath != audioGroupPath)
						{
							loadedPath = audioGroupPath;
							using (var stream = new FileStream(audioGroupPath, FileMode.Open, FileAccess.Read))
							{
								audioGroupData = UndertaleIO.Read(stream, warning => { throw new Exception(warning); });
							}
						}

						target = audioGroupData.EmbeddedAudio[sound.AudioID];
					}
					else
						throw new Exception("Failed to find audio group file.");
				}
				catch (Exception ex)
				{
					Console.WriteLine("Failed to find audio.");
				}
			}
			else
			{
				target = sound.AudioFile;
			}

			File.WriteAllBytes($@"{exportDir}\Sounds\{sound.Name.Content}.wav", target.Data);
		}

		progress.Report(1);
		progress.Dispose();
		Console.WriteLine($"Done!");

		Console.Write($"Exporting music... ");

		progress = new ProgressBar();
		var gameFolder = Path.GetDirectoryName(gamePath);
		var musFolder = Path.Combine(gameFolder, "mus");

		var musFolderDI = new DirectoryInfo(musFolder);
		var files = musFolderDI.GetFiles();

		for (var i = 0; i < files.Length; i++)
		{
			progress.Report(i / (double)files.Length);
			File.Copy(files[i].FullName, $@"{exportDir}\Sounds\{files[i].Name}");
		}

		progress.Report(1);
		progress.Dispose();
		Console.WriteLine($"Done!");
	}
}
