using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assets.Scripts
{
	public class GMBOOL
	{
		private bool _innerValue;

		public GMBOOL(bool value)
		{
			_innerValue = value;
		}

		public static implicit operator bool(GMBOOL b) => b._innerValue;
		public static implicit operator GMBOOL(bool b) => new(b);

		public static implicit operator int(GMBOOL b) => b._innerValue ? 1 : 0;
		public static implicit operator GMBOOL(int b) => new(b >= 1);
	}
}
