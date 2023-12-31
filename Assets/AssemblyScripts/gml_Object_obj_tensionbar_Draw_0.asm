.localvar 0 arguments

:[0]
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 30
sub.i.v
pushi.e 0
conv.i.v
pushi.e 437
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
pushi.e 434
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.flashsiner
pushi.e 1
add.i.v
pop.v.v self.flashsiner
push.v self.apparent
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i floor(argc=1)
pop.v.v self.tamt
pushi.e 0
pop.v.i self.maxed
push.v self.tamt
pushi.e 100
cmp.i.v LT
bf [2]

:[1]
push.v self.apparent
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i floor(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 30
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "%"@3588
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 95
add.i.v
push.v self.x
pushi.e 25
sub.i.v
call.i draw_text(argc=3)
popz.v

:[2]
push.v self.tamt
pushi.e 100
cmp.i.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.maxed
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "M"@2540
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 28
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "A"@366
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 90
add.i.v
push.v self.x
pushi.e 24
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "X"@2551
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i draw_text(argc=3)
popz.v

:[4]
push.v self.apparent
pushglb.v global.tension
sub.v.v
call.i abs(argc=1)
pushi.e 20
cmp.i.v LT
bf [6]

:[5]
pushglb.v global.tension
pop.v.v self.apparent

:[6]
push.v self.apparent
pushglb.v global.tension
cmp.v.v LT
bf [8]

:[7]
push.v self.apparent
pushi.e 20
add.i.v
pop.v.v self.apparent

:[8]
push.v self.apparent
pushglb.v global.tension
cmp.v.v GT
bf [10]

:[9]
push.v self.apparent
pushi.e 20
sub.i.v
pop.v.v self.apparent

:[10]
push.v self.apparent
push.v self.current
cmp.v.v NEQ
bf [34]

:[11]
push.v self.changetimer
pushi.e 1
add.i.v
pop.v.v self.changetimer
push.v self.changetimer
pushi.e 15
cmp.i.v GT
bf [34]

:[12]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.current
pushi.e 2
add.i.v
pop.v.v self.current

:[14]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 10
cmp.i.v GT
bf [16]

:[15]
push.v self.current
pushi.e 2
add.i.v
pop.v.v self.current

:[16]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 25
cmp.i.v GT
bf [18]

:[17]
push.v self.current
pushi.e 3
add.i.v
pop.v.v self.current

:[18]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 50
cmp.i.v GT
bf [20]

:[19]
push.v self.current
pushi.e 4
add.i.v
pop.v.v self.current

:[20]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 100
cmp.i.v GT
bf [22]

:[21]
push.v self.current
pushi.e 5
add.i.v
pop.v.v self.current

:[22]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 0
cmp.i.v LT
bf [24]

:[23]
push.v self.current
pushi.e 2
sub.i.v
pop.v.v self.current

:[24]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -10
cmp.i.v LT
bf [26]

:[25]
push.v self.current
pushi.e 2
sub.i.v
pop.v.v self.current

:[26]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -25
cmp.i.v LT
bf [28]

:[27]
push.v self.current
pushi.e 3
sub.i.v
pop.v.v self.current

:[28]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -50
cmp.i.v LT
bf [30]

:[29]
push.v self.current
pushi.e 4
sub.i.v
pop.v.v self.current

:[30]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -100
cmp.i.v LT
bf [32]

:[31]
push.v self.current
pushi.e 5
sub.i.v
pop.v.v self.current

:[32]
push.v self.apparent
push.v self.current
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [34]

:[33]
push.v self.apparent
pop.v.v self.current

:[34]
push.v self.current
pushi.e 0
cmp.i.v GT
bf [45]

:[35]
push.v self.apparent
push.v self.current
cmp.v.v LT
bf [37]

:[36]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 1
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.apparent
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 1
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[37]
push.v self.apparent
push.v self.current
cmp.v.v GT
bf [41]

:[38]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.apparent
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 1
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.maxed
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.d 0.5
conv.d.v
push.i 4235519
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[40]
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 1
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[41]
push.v self.apparent
push.v self.current
cmp.v.v EQ
bf [45]

:[42]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.maxed
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.d 0.5
conv.d.v
push.i 4235519
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[44]
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 1
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[45]
pushglb.v global.tensionselect
pushi.e 0
cmp.i.v GT
bf [49]

:[46]
push.v self.tsiner
pushi.e 1
add.i.v
pop.v.v self.tsiner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.tsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
call.i abs(argc=1)
push.d 0.2
add.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pop.v.v self.theight
push.v self.theight
pushglb.v global.tensionselect
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
add.v.v
pop.v.v self.theight2
push.v self.theight2
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
cmp.v.v GT
bf [48]

:[47]
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
sub.i.v
pop.v.v self.theight2
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.7
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v

:[48]
pushi.e 0
conv.i.v
push.v self.theight
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 1
sub.i.v
push.v self.theight2
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[49]
push.v self.apparent
pushi.e 20
cmp.i.v GT
bf [51]

:[50]
push.v self.apparent
pushglb.v global.maxtension
cmp.v.v LT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
push.v self.x
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushi.e 436
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[54]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 434
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]