.localvar 0 arguments
.localvar 1 i 2013

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [5]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 190
conv.i.v
pushi.e 760
conv.i.v
pushi.e 1200
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.susie
push.v self.susie
conv.v.i
pushenv [4]

:[3]
push.i 500000
pop.v.i self.depth

:[4]
popenv [3]

:[5]
pushi.e 0
pop.v.i self.aftercon
push.i 99999
conv.i.v
call.i tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[7]
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
b [6]

:[end]