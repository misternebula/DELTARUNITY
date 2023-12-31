.localvar 0 arguments

:[0]
call.i scr_84_init_localization(argc=0)
popz.v
pushbltn.v self.argument0
pushglb.v global.lang_map
call.i ds_map_find_value(argc=2)
ret.v

:[end]