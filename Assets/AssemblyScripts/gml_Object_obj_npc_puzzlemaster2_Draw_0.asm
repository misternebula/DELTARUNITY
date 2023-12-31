.localvar 0 arguments

:[0]
push.i 16777215
pop.v.i self.blend
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 255
pop.v.i self.blend

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 4235519
pop.v.i self.blend

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.i 65535
pop.v.i self.blend

:[6]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.i 8388736
pop.v.i self.blend

:[8]
push.v self.myinteract
pushi.e 3
cmp.i.v NEQ
bf [15]

:[9]
pushi.e 0
pop.v.i self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.type
pushi.e 320
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.type
pushi.e 321
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
pushi.e -1
pushi.e 1
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
pushi.e -1
pushi.e 2
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.x
pushi.e 44
add.i.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[16]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [23]

:[17]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.i
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.v
push.v self.x
push.v self.type
pushi.e 320
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 24
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.type
pushi.e 321
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.x
pushi.e 24
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
pushi.e -1
pushi.e 1
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.x
pushi.e 2
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
pushi.e -1
pushi.e 2
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.x
pushi.e 44
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[24]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.r
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.r2
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.type
pushi.e 320
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.siner
call.i sin(argc=1)
add.v.v
push.v self.type
pushi.e 322
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.siner
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 24
add.i.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
pushi.e -1
pushi.e 1
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 18
sub.i.v
push.v self.siner
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 2
add.i.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
pushi.e -1
pushi.e 2
push.v [array]self.beanie
pushi.e 1
cmp.i.v EQ
bf [end]

:[29]
pushi.e 1
conv.i.v
push.v self.blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 18
sub.i.v
push.v self.siner
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 44
add.i.v
push.v self.type
pushi.e 319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]