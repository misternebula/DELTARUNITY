.localvar 0 arguments
.localvar 1 xx 1162
.localvar 2 yy 1163
.localvar 3 str 1164
.localvar 4 __txtcolor__ 1165

:[0]
pushbltn.v self.argument0
pop.v.v local.xx
pushbltn.v self.argument1
pop.v.v local.yy
pushbltn.v self.argument2
pop.v.v local.str
call.i draw_get_color(argc=0)
pop.v.v local.__txtcolor__
pushi.e 0
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
sub.i.v
pushloc.v local.xx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
sub.i.v
pushloc.v local.xx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
add.i.v
pushloc.v local.xx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
add.i.v
pushloc.v local.xx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.__txtcolor__
call.i draw_set_colour(argc=1)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v

:[end]