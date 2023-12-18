.localvar 0 arguments
.localvar 1 i 2757

:[0]
push.v self.battlealpha
pop.v.v self.cur_alpha
push.v 326.battlemode
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.battlealpha
push.d 0.5
cmp.d.v LT
bf [3]

:[2]
push.v self.battlealpha
push.d 0.04
add.d.v
pop.v.v self.battlealpha

:[3]
b [6]

:[4]
push.v self.battlealpha
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.battlealpha
push.d 0.04
sub.d.v
pop.v.v self.battlealpha

:[6]
push.v self.tile_fade
pushi.e 1
cmp.i.v EQ
bf [11]

:[7]
push.v self.cur_alpha
push.v self.battlealpha
cmp.v.v NEQ
bf [11]

:[8]
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [11]

:[10]
push.v self.battlealpha
pushi.e 2
mul.i.v
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
b [9]

:[11]
push.v self.battlealpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 740
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 165
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[12]
push.v self.battlealpha
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v 165.image_blend
push.v self.battlealpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[13]
push.i 16777215
pop.v.i 165.image_blend

:[end]