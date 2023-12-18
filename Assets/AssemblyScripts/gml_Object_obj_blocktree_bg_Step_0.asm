.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.oo
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
pushi.e 176
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[2]
push.d -0.8
push.v 176.battlealpha
push.v 176.max_battlealpha
mul.v.v
push.d 1.5
mul.d.v
add.v.d
pop.v.v self.oo
push.v self.oo
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.oo

:[4]
push.v self.oo
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.oo

:[6]
push.v self.oo
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[7]
push.v self.spec
pushi.e 2
cmp.i.v EQ
bf [14]

:[8]
pushi.e 176
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[9]
pushi.e 4
push.v 176.battlealpha
push.v 176.max_battlealpha
mul.v.v
pushi.e 4
mul.i.v
sub.v.i
pop.v.v self.oo
push.v self.oo
pushi.e 1
cmp.i.v GT
bf [11]

:[10]
pushi.e 1
pop.v.i self.oo

:[11]
push.v self.oo
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
pushi.e 0
pop.v.i self.oo

:[13]
push.v self.oo
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[14]
push.v self.spec
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
push.v self.blocktimer
pushi.e 1
add.i.v
pop.v.v self.blocktimer

:[16]
push.v self.blocktimer
pushi.e 20
cmp.i.v EQ
bf [23]

:[17]
push.v self.x
push.v self.sprite_width
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.xv
push.v self.y
push.v self.sprite_height
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
pushi.e 4
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.yv
pushi.e 696
conv.i.v
push.v self.yv
push.v self.xv
call.i scr_dark_marker(argc=3)
pop.v.v self.block
push.v self.block
conv.v.i
pushenv [19]

:[18]
push.d 0.4
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed
push.d 0.7
push.d 1.5
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.gravity_direction
push.d 0.1
pop.v.d self.gravity
pushi.e 0
pop.v.i self.image_alpha
push.d -0.1
pop.v.d self.friction

:[19]
popenv [18]
push.v self.depth
pushi.e 1
sub.i.v
push.v self.block
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.oo
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
push.v self.block
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.oo
push.d 0.8
cmp.d.v GTE
bf [23]

:[20]
push.v self.block
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.blocktimer
pushi.e 20
cmp.i.v GTE
bf [25]

:[24]
push.v self.blocktimer
pushi.e 30
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bf [31]

:[27]
push.v self.block
conv.v.i
pushenv [30]

:[28]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [30]

:[29]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[30]
popenv [28]

:[31]
push.v self.blocktimer
pushi.e 38
cmp.i.v GTE
bf [35]

:[32]
push.v self.block
conv.v.i
pushenv [34]

:[33]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[34]
popenv [33]

:[35]
push.v self.blocktimer
pushi.e 48
cmp.i.v GTE
bf [end]

:[36]
pushi.e 0
pop.v.i self.blocktimer
push.v self.block
conv.v.i
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]

:[end]