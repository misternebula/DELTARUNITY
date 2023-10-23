using System.Collections.Generic;

namespace Assets.Scripts.IniFiles
{
	public class IniFile
	{
		public string Name;
		public List<IniSection> Sections = new();
	}
}
