.localvar 0 arguments

:[0]
push.v self.explode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
push.v self.image_angle
push.v self.rotspeed
add.v.v
pop.v.v self.image_angle
push.v self.image_angle
pop.v.v self.remrot

:[2]
push.v self.y
pushbltn.v self.room_height
pushi.e 100
sub.i.v
cmp.v.v GTE
bf [4]

:[3]
push.v self.explode
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 118
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 118
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 1
pop.v.i self.explode
pushi.e 0
pop.v.i self.explodetimer
push.v self.image_angle
pop.v.v self.remrot
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 572
pop.v.i self.mask_index
pushi.e 572
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.y
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[7]
push.v self.explode
pushi.e 1
cmp.i.v EQ
bf [12]

:[8]
pushi.e 0
pop.v.i self.active
push.v self.image_xscale
pushi.e 8
add.i.v
pop.v.v self.image_xscale
push.v self.image_xscale
pushi.e 16
cmp.i.v GTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.active

:[10]
push.v self.image_xscale
pushi.e 32
cmp.i.v GTE
bf [12]

:[11]
pushi.e 2
pop.v.i self.explode

:[12]
push.v self.explode
pushi.e 2
cmp.i.v EQ
bf [17]

:[13]
push.v self.image_xscale
pushi.e 4
sub.i.v
pop.v.v self.image_xscale
push.v self.image_xscale
pushi.e 16
cmp.i.v LTE
bf [15]

:[14]
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.active

:[15]
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
pushi.e 233
pushenv [20]

:[19]
push.v self.made
push.d 0.2
add.d.v
pop.v.v self.made

:[20]
popenv [19]
pushi.e 2
pop.v.i self.grazed

:[end]