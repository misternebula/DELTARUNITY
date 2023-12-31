.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i scr_healall(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.chartotal
cmp.v.v LT
bf [end]

:[2]
push.v self.i
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
pushbltn.v self.argument0
push.v self.healtext
conv.v.i
pop.v.v [stacktop]self.healamt
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]