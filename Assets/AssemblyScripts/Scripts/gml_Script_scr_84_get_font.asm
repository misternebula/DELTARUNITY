.localvar 0 arguments

:[0]
call.i scr_84_init_localization(argc=0)
popz.v
push.s "chemg_last_get_font"@3367
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.s ""@2240
pop.v.s global.chemg_last_get_font

:[2]
pushbltn.v self.argument0
pushglb.v global.chemg_last_get_font
cmp.v.v NEQ
bf [4]

:[3]
pushbltn.v self.argument0
pop.v.v global.chemg_last_get_font
push.s "get font: "@3368
pushbltn.v self.argument0
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[4]
pushbltn.v self.argument0
pushglb.v global.font_map
call.i ds_map_find_value(argc=2)
ret.v

:[end]