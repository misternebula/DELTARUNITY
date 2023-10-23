using UndertaleModLib.Util;
using System.Text;
using System;
using System.Linq;


EnsureDataLoaded();

//string InputtedText = "";
//InputtedText = SimpleTextInput("Menu", "Enter room name", InputtedText, true);

//string outputPath = Path.Combine(Path.GetDirectoryName(FilePath) + Path.DirectorySeparatorChar, $"{InputtedText}_tiles.txt");

//var room = Data.Rooms.First(x => x.Name.Content == InputtedText);

var folder = Path.Combine(Path.GetDirectoryName(FilePath) + Path.DirectorySeparatorChar, "Export_TileData");

foreach (var room in Data.Rooms)
{
	var outputPath = Path.Combine(folder + Path.DirectorySeparatorChar, $"{room.Name.Content}_tiles.txt");

	using (StreamWriter writer = new StreamWriter(outputPath))
	{
		foreach (var item in room.Layers)
		{
			if (!item.LayerName.Content.Contains("Tiles"))
			{
				continue;
			}
			
			writer.WriteLine($"@@{item.LayerName.Content}");
			
			foreach (var tile in item.AssetsData.LegacyTiles)
			{
				if (tile.SpriteDefinition == null)
				{
					continue;
				}
			
				writer.WriteLine($"{tile.InstanceID}");
				writer.WriteLine($"{tile.X};{tile.Y}");
				writer.WriteLine($"{tile.SpriteDefinition.Name.Content}");
				writer.WriteLine($"{tile.SourceX};{tile.SourceY};{tile.Width};{tile.Height}");
			}
		}
	}
}





