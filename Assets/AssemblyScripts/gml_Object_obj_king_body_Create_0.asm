.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e 0
pop.v.i self.condition
pushi.e 0
pop.v.i self.attackno
pushi.e 0
pop.v.i self.attack
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.xx
pushi.e 470
add.i.v
pop.v.v self.x
push.v self.yy
pushi.e 70
add.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.faketimer
pushi.e 180
pop.v.i self.faketimermax
pushi.e 0
pop.v.i self.timeruse
push.d 0.334
pop.v.d self.image_speed

:[end]