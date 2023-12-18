.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.on
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.on
pushi.e 4
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [17]

:[4]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.special
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 2
pop.v.i self.special

:[9]
push.v self.on
pushi.e 1
cmp.i.v EQ
bt [12]

:[10]
push.v self.on
pushi.e 2
cmp.i.v EQ
bt [12]

:[11]
push.v self.on
pushi.e 3
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [16]

:[14]
push.v self.onion_blue_alpha
pushi.e 1
cmp.i.v LT
bf [16]

:[15]
push.v self.onion_blue_alpha
push.d 0.05
add.d.v
pop.v.v self.onion_blue_alpha

:[16]
push.v self.onion_blue_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.onion_blue_alpha
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.v
push.d 0.1
push.v self.onion_blue_alpha
add.v.d
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 251
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.on
pushi.e 2
cmp.i.v EQ
bt [20]

:[18]
push.v self.on
pushi.e 3
cmp.i.v EQ
bt [20]

:[19]
push.v self.on
pushi.e 4
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [end]

:[22]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 253
pop.v.i self.onionsprite

:[24]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 254
pop.v.i self.onionsprite

:[26]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 255
pop.v.i self.onionsprite

:[28]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
pushi.e 252
pop.v.i self.onionsprite

:[30]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [32]

:[31]
pushi.e 256
pop.v.i self.onionsprite

:[32]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
pushi.e 257
pop.v.i self.onionsprite

:[34]
push.v self.y
push.v self.onionh
call.i floor(argc=1)
sub.v.v
push.v self.x
pushi.e 32
sub.i.v
push.v self.onionh
call.i floor(argc=1)
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.onionsprite
call.i draw_sprite_part(argc=8)
popz.v
push.v self.on
pushi.e 2
cmp.i.v EQ
bt [36]

:[35]
push.v self.on
pushi.e 3
cmp.i.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [40]

:[38]
push.v self.onionh
pushi.e 63
cmp.i.v LT
bf [40]

:[39]
push.v self.onionh
push.d 0.5
add.d.v
pop.v.v self.onionh

:[40]
push.v self.on
pushi.e 4
cmp.i.v EQ
bf [end]

:[41]
push.v self.onionh
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.v self.onionh
push.d 0.5
sub.d.v
pop.v.v self.onionh
b [end]

:[43]
push.v self.onion_blue_alpha
pushi.e 0
cmp.i.v GT
bf [end]

:[44]
push.v self.onion_blue_alpha
push.d 0.05
sub.d.v
pop.v.v self.onion_blue_alpha

:[end]