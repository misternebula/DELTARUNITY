.localvar 0 arguments
.localvar 1 i 2768

:[0]
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
pop.v.i self.boss
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.boss
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[2]
pushi.e 0
pop.v.i self.battlealpha
pushi.e 1
pop.v.i self.max_battlealpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.rot
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.eyer
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.rotspeed
pushi.e 0
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [6]

:[3]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [5]

:[4]
pushi.e -4
pop.v.i self.rotspeed
pushi.e 180
pop.v.i self.rot

:[5]
pushi.e 1
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice

:[6]
pushi.e 8
pop.v.i self.bmax
pushi.e 0
pop.v.i self.made
pushi.e 30
pop.v.i self.offx
pushi.e 30
pop.v.i self.offy
pushi.e 300
pop.v.i self.xrange
pushi.e 240
pop.v.i self.yrange
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [8]

:[7]
push.d 2.5
pop.v.d self.rotspeed
pushi.e 11
pop.v.i self.bmax
pushi.e 300
pop.v.i self.xrange
pushi.e 280
pop.v.i self.yrange
pushi.e 1
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice

:[8]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [20]

:[9]
pushi.e 3
pop.v.i self.rotspeed
pushi.e 8
pop.v.i self.bmax
pushi.e 280
pop.v.i self.yrange
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [11]

:[10]
push.v self.y
pushi.e 800
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e -3
pop.v.i self.rotspeed
pushi.e 180
pop.v.i self.rot

:[14]
push.v self.x
pushi.e 800
cmp.i.v LTE
bf [16]

:[15]
push.v self.y
pushi.e 800
cmp.i.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e -3
pop.v.i self.rotspeed
pushi.e 180
pop.v.i self.rot

:[19]
pushi.e 1
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice

:[20]
push.v self.tile_fade
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.boss
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [27]

:[24]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.v self.tile_layer_choice
call.i tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[25]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [27]

:[26]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i tile_set_alpha(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [25]

:[27]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
pushi.e 0
pop.v.i self.siner

:[end]