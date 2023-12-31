.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i layer_force_draw_depth(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_colour(argc=1)
popz.v

:[end]