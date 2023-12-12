.localvar 0 arguments

:[0]
pushi.e 10
push.v self.FADEBUFFER
sub.v.i
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.FA
push.v self.FA
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.FA

:[2]
pushi.e 0
pop.v.i self.k

:[3]
push.v self.k
push.v self.STEP
cmp.v.v LT
bf [11]

:[4]
pushi.e 904
pop.v.i self.img
push.v self.k
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 903
pop.v.i self.img

:[6]
push.v self.k
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 905
pop.v.i self.img

:[8]
pushi.e -1
push.v self.k
conv.v.i
push.v [array]self.LOCK
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i abs(argc=1)
pop.v.v self.s_size
push.d 0.4
push.v self.FA
mul.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.s_size
add.v.i
pushi.e 2
push.v self.s_size
add.v.i
push.v self.y
pushi.e -1
push.v self.k
conv.v.i
push.v [array]self.sy
add.v.v
push.v self.s_size
push.v self.sprite_height
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.s_size
push.v self.sprite_width
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e -1
push.v self.k
conv.v.i
push.v [array]self.PART
push.v self.img
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 21
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i abs(argc=1)
pop.v.v self.s_size
push.d 0.4
push.v self.FA
mul.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.s_size
add.v.i
pushi.e 2
push.v self.s_size
add.v.i
push.v self.y
pushi.e -1
push.v self.k
conv.v.i
push.v [array]self.sy
add.v.v
push.v self.s_size
push.v self.sprite_height
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.s_size
push.v self.sprite_width
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e -1
push.v self.k
conv.v.i
push.v [array]self.PART
push.v self.img
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
push.v self.k
pushi.e 1
add.i.v
pop.v.v self.k
b [3]

:[11]
push.v self.CANCEL
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
push.v self.FA
mul.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.inity
pushi.e 30
sub.i.v
push.v self.initx
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 906
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
pushi.e 0
pop.v.i self.j

:[14]
push.v self.j
push.v self.STEP
cmp.v.v LT
bf [26]

:[15]
pushi.e 904
pop.v.i self.img
push.v self.j
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 903
pop.v.i self.img

:[17]
push.v self.j
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 905
pop.v.i self.img

:[19]
push.v self.s
push.v self.j
cmp.v.v EQ
bf [24]

:[20]
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.PARTMAX
cmp.v.v LTE
bf [23]

:[22]
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.PARTX
push.v self.i
pushi.e 50
mul.i.v
add.v.v
call.i abs(argc=1)
pushi.e 120
conv.i.d
div.d.v
sub.v.i
pop.v.v self.alpha
push.v self.alpha
push.v self.FA
mul.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sy
add.v.v
push.v self.x
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.PARTX
add.v.v
push.v self.i
pushi.e 50
mul.i.v
add.v.v
push.v self.i
push.v self.img
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
b [25]

:[24]
pushi.e 1
push.v self.FA
mul.v.i
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sy
add.v.v
push.v self.x
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.PART
push.v self.img
call.i draw_sprite_ext(argc=9)
popz.v

:[25]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [14]

:[26]
pushi.e 0
pop.v.i self.NAMEFADE_COMPLETE
pushi.e 309
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[27]
push.v 309.TYPE
pushi.e 3
cmp.i.v EQ
bf [30]

:[28]
pushi.e 1
pop.v.i self.NAMEFADE_COMPLETE
push.v self.NAMEFADE
push.d 0.03
add.d.v
pop.v.v self.NAMEFADE
push.v self.NAMEFADE
push.d 1.25
mul.d.v
pop.v.v self.NAMEFADE
push.v self.NAMEFADE
pushi.e 1
cmp.i.v GTE
bf [30]

:[29]
pushi.e 1
pop.v.i self.NAMEFADE

:[30]
push.v self.NAMEFADE_COMPLETE
pushi.e 0
cmp.i.v EQ
bf [33]

:[31]
push.v self.NAMEFADE
push.d 0.03
sub.d.v
pop.v.v self.NAMEFADE
push.v self.NAMEFADE
push.d 0.75
mul.d.v
pop.v.v self.NAMEFADE
push.v self.NAMEFADE
pushi.e 0
cmp.i.v LTE
bf [33]

:[32]
pushi.e 0
pop.v.i self.NAMEFADE

:[33]
push.v self.NAMEFADE
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]