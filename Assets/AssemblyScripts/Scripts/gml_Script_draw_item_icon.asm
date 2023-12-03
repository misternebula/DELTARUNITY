.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i draw_get_color(argc=0)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
pushbltn.v self.argument2
pushi.e 798
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]