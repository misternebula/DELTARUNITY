.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.sons
pushi.e 100
pop.v.i self.damage
pushi.e 1
pop.v.i self.active
pushi.e 1
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.3
pop.v.d self.friction
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
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
pop.v.i self.soundcon
pushi.e 149
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]