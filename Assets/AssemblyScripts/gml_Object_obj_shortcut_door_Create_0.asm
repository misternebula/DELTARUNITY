.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.checked
pushi.e 0
pushi.e -5
pushi.e 32
pop.v.i [array]global.flag
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.teleportmode
pushbltn.v self.room
pop.v.v self.door_destination
pushbltn.v self.room
pop.v.v self.door_location
pushi.e 1
pop.v.i self.on
pushi.e 354
conv.i.v
push.v self.y
pushi.e 96
add.i.v
push.v self.x
pushi.e 6
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.weirdlight
push.v self.weirdlight
conv.v.i
pushenv [2]

:[1]
push.i 895000
pop.v.i self.depth
push.d 0.125
pop.v.d self.image_speed

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 60
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.on

:[4]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [7]

:[5]
pushglb.v global.plot
pushi.e 154
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self.on

:[7]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [end]

:[8]
pushi.e 358
pop.v.i self.sprite_index
push.v self.weirdlight
conv.v.i
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[end]