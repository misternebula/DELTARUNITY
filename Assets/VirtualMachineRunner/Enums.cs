namespace Assets.VirtualMachineRunner
{
	/// <summary>
	/// result of the execution of an instruction
	/// </summary>
	public enum ExecutionResult
	{
		Success,
		Failed,
		ReturnedValue,
		JumpedToLabel,
		JumpedToEnd
	}

	public enum VariableType
	{
		None,
		Global,
		Self,
		Local,
		Index,
		Other
	}

	public enum VariablePrefix
	{
		None,
		Stacktop,
		Array
	}

	public enum EventType
	{
		None,
		Create,
		Destroy,
		Alarm,
		Step,
		Collision,
		Keyboard,
		Mouse,
		Other,
		Draw,
		KeyPress,
		KeyRelease,
		Trigger,
		CleanUp,
		Gesture,
		PreCreate
	}

	public enum StepType
	{
		Step,
		BeginStep,
		EndStep
	}

	public enum OtherType
	{
		OutsideRoom,
		IntersectBoundary,
		GameStart,
		GameEnd,
		RoomStart,
		RoomEnd,
		NoMoreLives,
		AnimationEnd,
		EndOfPath,
		NoMoreHealth,
		User0,
		User1,
		User2,
		User3,
		User4,
		User5,
		User6,
		User7,
		User8,
		User9,
		User10,
		User11,
		User12,
		User13,
		User14,
		User15,
		User16,
		OutsideView0,
		OutsideView1,
		OutsideView2,
		OutsideView3,
		OutsideView4,
		OutsideView5,
		OutsideView6,
		OutsideView7,
		BoundaryView0,
		BoundaryView1,
		BoundaryView2,
		BoundaryView3,
		BoundaryView4,
		BoundaryView5,
		BoundaryView6,
		BoundaryRoom7,
		AnimationUpdate,
		AnimationEvent,
		AsyncImageLoaded,
		AsyncSoundLoaded,
		AsyncHTTP,
		AsyncDialog,
		AsyncIAP,
		AsyncCloud,
		AsyncNetworking,
		AsyncSteam,
		AsyncSocial,
		AsyncPushNotification,
		AsyncSaveAndLoad,
		AsyncAudioRecording,
		AsyncAudioPlayback,
		AsyncSystem
	}

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

	public enum VMOpcode
	{
		CONV,
		MUL,
		DIV,
		REM,
		MOD,
		ADD,
		SUB,
		AND,
		OR,
		XOR,
		NEG,
		NOT,
		SHL,
		SHR,
		CMP,
		POP,
		DUP,
		RET,
		EXIT,
		POPZ,
		B,
		BT,
		BF,
		PUSHENV,
		POPENV,
		PUSH,
		PUSHLOC,
		PUSHGLB,
		PUSHBLTN,
		PUSHI,
		CALL,
		CALLV,
		BREAK,
		CHKINDEX
	}

	public enum VMType
	{
		None,
		i,
		v,
		b,
		d,
		e,
		s,
		l
	}

	public enum VMComparison
	{
		None,
		LT,
		LTE,
		EQ,
		NEQ,
		GTE,
		GT
	}
}