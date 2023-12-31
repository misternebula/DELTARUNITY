.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.sndcon
pushi.e 0
pop.v.i self.sndtimer
pushi.e 0
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 2
mul.i.v
sub.v.i
pop.v.v self.dancetimer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 326
pushi.e -5
pushi.e 0
pop.v.i [array]global.charinstance
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
pushi.e -5
pushi.e 1
pop.v.v [array]global.charinstance
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
pushi.e -5
pushi.e 2
pop.v.v [array]global.charinstance
pushi.e 0
pop.v.i self.con
pushi.e -6
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.specturn
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.specturn
pushi.e 0
pop.v.i self.vspeed
pushi.e 6
pop.v.i self.hspeed

:[2]
pushi.e 182
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bullet
pushi.e 720
push.v self.bullet
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.bullet
conv.v.i
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.active
pushi.e 3
pop.v.i self.target
pushi.e 15
pop.v.i self.damage
pushi.e 0
pop.v.i self.visible
pushi.e 255
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[4]
popenv [3]
pushi.e 0
pop.v.i self.myinteract

:[end]