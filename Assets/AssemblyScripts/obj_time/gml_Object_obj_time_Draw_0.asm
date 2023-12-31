.localvar 0 arguments

:[0]
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.fps
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i draw_text(argc=3)
popz.v

:[end]