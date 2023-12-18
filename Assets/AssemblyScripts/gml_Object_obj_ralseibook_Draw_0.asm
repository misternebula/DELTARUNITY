.localvar 0 arguments

:[0]
push.v self.page
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
conv.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.turning
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.turntimer
push.d 6.283185307179586
push.v self.siner
mul.v.d
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.8
mul.d.v
call.i abs(argc=1)
add.v.v
pop.v.v self.turntimer
push.v self.turntimer
pushi.e 10
conv.i.d
div.d.v
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.grey1
pushi.e 20
push.v self.turntimer
sub.v.i
pushi.e 10
conv.i.d
div.d.v
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.grey2
push.v self.turntimer
pushi.e 20
cmp.i.v GTE
bf [5]

:[4]
push.v self.page
pushi.e 1
add.i.v
pop.v.v self.page
pushi.e 0
pop.v.i self.turntimer
pushi.e 0
pop.v.i self.turning

:[5]
push.v self.turning
pushi.e -1
cmp.i.v EQ
bf [8]

:[6]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.turntimer
push.d 6.283185307179586
push.v self.siner
mul.v.d
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.8
mul.d.v
call.i abs(argc=1)
sub.v.v
pop.v.v self.turntimer
push.v self.turntimer
neg.v
pushi.e 10
conv.i.d
div.d.v
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.grey1
pushi.e 20
push.v self.turntimer
add.v.i
pushi.e 10
conv.i.d
div.d.v
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.grey2
push.v self.turntimer
pushi.e -20
cmp.i.v LTE
bf [8]

:[7]
push.v self.page
pushi.e 1
sub.i.v
pop.v.v self.page
pushi.e 0
pop.v.i self.turntimer
pushi.e 0
pop.v.i self.turning

:[8]
pushi.e 7
pop.v.i self.i

:[9]
push.v self.i
pushi.e -1
cmp.i.v GTE
bf [end]

:[10]
push.v self.page
push.v self.i
cmp.v.v LT
bf [12]

:[11]
push.v self.turning
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [17]

:[14]
push.v self.page
pushi.e -1
cmp.i.v GT
bf [16]

:[15]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.i
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.i
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[17]
push.v self.turnpage
push.v self.i
cmp.v.v EQ
bf [32]

:[18]
push.v self.turning
pushi.e -1
cmp.i.v EQ
bf [25]

:[19]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.i
pushi.e 1
add.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.page
pushi.e -1
cmp.i.v GT
bf [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.i
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[21]
push.v self.turntimer
pushi.e -10
cmp.i.v GT
bf [23]

:[22]
pushi.e 1
conv.i.v
push.v self.grey1
pushi.e 1
conv.i.v
pushi.e 1
push.v self.turntimer
pushi.e 10
conv.i.d
div.d.v
add.v.i
push.v self.yy
push.v self.xx
push.v self.turntimer
pushi.e 10
conv.i.d
div.d.v
push.v self.sprite_width
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.i
pushi.e 1
add.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[23]
push.v self.turntimer
pushi.e -10
cmp.i.v LT
bf [25]

:[24]
pushi.e 1
conv.i.v
push.v self.grey2
pushi.e 1
conv.i.v
pushi.e -1
push.v self.turntimer
pushi.e 10
conv.i.d
div.d.v
sub.v.i
push.v self.yy
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.i
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[25]
push.v self.turning
pushi.e 1
cmp.i.v EQ
bf [32]

:[26]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.i
pushi.e 1
add.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.page
pushi.e 5
cmp.i.v LT
bf [28]

:[27]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.i
pushi.e 2
add.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[28]
push.v self.turntimer
pushi.e 10
cmp.i.v LT
bf [30]

:[29]
pushi.e 1
conv.i.v
push.v self.grey1
pushi.e 1
conv.i.v
pushi.e 1
push.v self.turntimer
pushi.e 10
conv.i.d
div.d.v
sub.v.i
push.v self.yy
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.i
pushi.e 1
add.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[30]
push.v self.turntimer
pushi.e 10
cmp.i.v GT
bf [32]

:[31]
pushi.e 1
conv.i.v
push.v self.grey2
pushi.e 1
conv.i.v
push.v self.turntimer
pushi.e 10
sub.i.v
pushi.e 10
conv.i.d
div.d.v
push.v self.yy
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.turntimer
pushi.e 10
sub.i.v
pushi.e 10
conv.i.d
div.d.v
push.v self.sprite_width
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.sprite_height
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.i
pushi.e 2
add.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[32]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [9]

:[end]