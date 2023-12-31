.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
push.d 1.96
pop.v.d self.image_xscale
push.d 1.96
pop.v.d self.image_yscale
pushi.e 315
conv.i.v
pushi.e 225
conv.i.v
pushi.e 135
conv.i.v
pushi.e 45
conv.i.v
call.i choose(argc=4)
pop.v.v self.initdir
push.v self.initdir
pop.v.v self.direction
push.d 0.1
pop.v.d self.speed
pushi.e 1
pop.v.i self.active
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 303.x
pop.v.v self.x
push.v 303.y
pop.v.v self.y
pushi.e 1
pop.v.i 303.megakeep

:[2]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
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
pushi.e 140
push.v self.xx
add.v.i
pop.v.v self.lx
pushi.e 480
push.v self.xx
add.v.i
pop.v.v self.rx
pushi.e 0
push.v self.yy
add.v.i
pop.v.v self.ux
pushi.e 320
push.v self.yy
add.v.i
pop.v.v self.dx
pushi.e 0
pop.v.i self.fadein
pushi.e 0
pop.v.i self.spikecount
pushi.e 60
pop.v.i self.inv
pushi.e 0
pop.v.i self.timepoints
pushi.e 3
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.target
pushi.e 50
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.minitimer
pushi.e 0
pop.v.i self.bumpnoise
pushi.e 0
pop.v.i self.timerbonus
pushi.e 0
pop.v.i self.wall_destroy

:[end]