.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushbltn.v self.argument3
pushi.e 20
sub.i.v
pushbltn.v self.argument2
pushi.e 20
sub.i.v
pushbltn.v self.argument1
pushi.e 20
add.i.v
pushbltn.v self.argument0
pushi.e 20
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushbltn.v self.argument3
pushbltn.v self.argument2
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i scr_darkbox(argc=4)
popz.v

:[end]