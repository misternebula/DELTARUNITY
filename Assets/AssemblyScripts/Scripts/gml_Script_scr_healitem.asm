.localvar 0 arguments

:[0]
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i scr_heal(argc=2)
popz.v
pushbltn.v self.argument0
call.i scr_charbox_x(argc=1)
pop.v.v self.healx
pushi.e 167
conv.i.v
push.v self.yy
pushi.e 430
add.i.v
push.v self.healx
pushi.e 70
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.healtext
pushbltn.v self.argument1
push.v self.healtext
conv.v.i
pop.v.v [stacktop]self.healamt

:[end]