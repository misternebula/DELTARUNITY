using UndertaleModLib.Util;
using System.Text;
using System;
using System.Linq;

EnsureDataLoaded();

var folder = Path.Combine(Path.GetDirectoryName(FilePath) + Path.DirectorySeparatorChar, "Export_ObjectData");

foreach (var room in Data.Rooms)
{
	var outputPath = Path.Combine(folder + Path.DirectorySeparatorChar, $"{room.Name.Content}_objects.txt");
	
	using (StreamWriter writer = new StreamWriter(outputPath))
	{
		foreach (var item in room.Layers)
		{
			if (!item.LayerName.Content.Contains("Instances"))
			{
				continue;
			}
			
			writer.WriteLine($"@@{item.LayerName.Content}");
			
			foreach (var obj in item.InstancesData.Instances)
			{
				writer.WriteLine($"{obj.InstanceID}");
				writer.WriteLine($"{obj.X};{obj.Y}");
				writer.WriteLine($"{obj.ObjectDefinition.Name.Content}");
				writer.WriteLine($"{obj.ScaleX};{obj.ScaleY}");
			}
		}
	}
}