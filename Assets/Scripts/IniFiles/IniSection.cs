using System.Collections.Generic;

namespace Assets.Scripts.IniFiles
{
	public class IniSection
	{
		public string Name;
		public Dictionary<string, string> Dict = new();

		public IniSection(string name) => Name = name;
	}
}
