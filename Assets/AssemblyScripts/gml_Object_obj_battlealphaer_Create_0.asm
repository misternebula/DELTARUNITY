.localvar 0 arguments
.localvar 1 i 2690

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
pop.v.i self.battlealpha
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.tile_fade
pushi.e 0
pop.v.i self.fadeplease
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.fadeplease

:[2]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.fadeplease

:[4]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.fadeplease

:[6]
pushbltn.v self.room
pushi.e 39
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.fadeplease

:[8]
push.v self.fadeplease
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
push.i 777777
pop.v.i self.tile_layer_amount
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bt [11]

:[10]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.i 222222
pop.v.i self.tile_layer_amount

:[14]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.v self.tile_layer_amount
call.i tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[15]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[16]
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
b [15]

:[end]