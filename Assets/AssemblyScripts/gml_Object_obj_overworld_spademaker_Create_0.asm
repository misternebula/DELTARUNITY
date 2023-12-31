.localvar 0 arguments
.localvar 1 i 2799

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.darkamt
pushi.e 326
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.battlemode

:[2]
popenv [1]
pushi.e 326
pushi.e -5
pushi.e 0
pop.v.i [array]global.charinstance
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.side
pushi.e 0
pop.v.i self.homing
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.homing

:[4]
pushbltn.v self.room
pushi.e 102
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.homing

:[6]
pushbltn.v self.room
pushi.e 103
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.homing

:[8]
push.l 4732847832
pushi.e -1
pushi.e 0
pop.v.l [array]self.sidespade
push.l 4732847832
pushi.e -1
pushi.e 1
pop.v.l [array]self.sidespade
pushi.e 0
pop.v.i self.intensity
pushi.e 0
pop.v.i self.tile_fade
pushbltn.v self.room
pushi.e 102
cmp.i.v EQ
bt [11]

:[9]
pushbltn.v self.room
pushi.e 103
cmp.i.v EQ
bt [11]

:[10]
pushbltn.v self.room
pushi.e 42
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [end]

:[13]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.i 99999
pop.v.i self.tile_layer_choice
push.v self.tile_layer_choice
call.i tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[15]
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
b [14]

:[end]