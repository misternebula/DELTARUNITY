.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v global.chemg_font
pushbltn.v self.argument0
call.i scr_84_get_font(argc=1)
call.i draw_set_font(argc=1)
popz.v

:[end]