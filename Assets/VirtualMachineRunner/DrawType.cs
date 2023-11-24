using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assets.VirtualMachineRunner
{
	public enum DrawType
	{
		Draw,
		DrawGUI,
		Resize,
		DrawBegin,
		DrawEnd,
		DrawGUIBegin,
		DrawGUIEnd,
		PreDraw,
		PostDraw
	}
}
