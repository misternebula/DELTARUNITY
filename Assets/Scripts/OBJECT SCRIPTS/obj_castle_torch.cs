using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_castle_torch : GamemakerObject
	{
		public override void Create()
		{
			image_speed = 0.2;
			image_xscale = 2;
			image_yscale = 2;
			if (Assets.RoomManager.RoomManager.Instance.GetRoomIndex(room) >= Assets.RoomManager.RoomManager.Instance.GetRoomIndex("room_cc_1f"))
				sprite_index = "spr_castle_torch_white";
		}
	}
}
