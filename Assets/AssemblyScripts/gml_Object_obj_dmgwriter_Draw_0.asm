.localvar 0 arguments

:[0]
push.v self.delaytimer
push.v self.delay
cmp.v.v LT
bf [4]

:[1]
pushi.e 304
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.killtimer

:[3]
popenv [2]

:[4]
push.v self.delaytimer
pushi.e 1
add.i.v
pop.v.v self.delaytimer
push.v self.delaytimer
push.v self.delay
cmp.v.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e 10
pop.v.i self.hspeed
push.v self.vspeed
pop.v.v self.vstart
pushi.e 90
pop.v.i self.flip

:[6]
push.v self.delaytimer
push.v self.delay
cmp.v.v GTE
bf [end]

:[7]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.lightb
call.i draw_set_color(argc=1)
popz.v

:[9]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.lightf
call.i draw_set_color(argc=1)
popz.v

:[11]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.lightg
call.i draw_set_color(argc=1)
popz.v

:[13]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[15]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[17]
push.v self.specialmessage
pop.v.v self.message
push.v self.damage
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i self.message

:[19]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 2
pop.v.i self.message

:[21]
pushglb.v global.damagefont
call.i draw_set_font(argc=1)
popz.v
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[23]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[25]
push.v self.hspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [27]

:[26]
pushi.e 0
pop.v.i self.hspeed

:[27]
push.v self.message
pushi.e 0
cmp.i.v EQ
bf [33]

:[28]
pushi.e 1
push.v self.kill
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.damage
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.y
push.v self.x
pushi.e 30
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[30]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 90
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.damage
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.y
push.v self.x
pushi.e 30
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[32]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
b [41]

:[33]
push.v self.message
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
push.v self.kill
sub.v.i
call.i draw_get_color(argc=0)
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 678
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
push.v self.message
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
push.v self.kill
sub.v.i
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 1
conv.i.v
pushi.e 678
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[37]
push.v self.message
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
push.v self.kill
sub.v.i
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 2
conv.i.v
pushi.e 678
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
push.v self.message
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
push.v self.kill
sub.v.i
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 3
conv.i.v
pushi.e 678
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.v self.bounces
pushi.e 2
cmp.i.v LT
bf [43]

:[42]
push.v self.vspeed
pushi.e 1
add.i.v
pop.v.v self.vspeed

:[43]
push.v self.y
push.v self.ystart
cmp.v.v GT
bf [46]

:[44]
push.v self.bounces
pushi.e 2
cmp.i.v LT
bf [46]

:[45]
push.v self.killactive
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.v self.ystart
pop.v.v self.y
push.v self.vstart
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.vspeed
push.v self.bounces
pushi.e 1
add.i.v
pop.v.v self.bounces

:[49]
push.v self.bounces
pushi.e 2
cmp.i.v GTE
bf [51]

:[50]
push.v self.killactive
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 0
pop.v.i self.vspeed
push.v self.ystart
pop.v.v self.y

:[54]
push.v self.stretchgo
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.stretch
push.d 0.4
add.d.v
pop.v.v self.stretch

:[56]
push.v self.stretch
push.d 1.2
cmp.d.v GTE
bf [58]

:[57]
pushi.e 1
pop.v.i self.stretch
pushi.e 0
pop.v.i self.stretchgo

:[58]
push.v self.killtimer
pushi.e 1
add.i.v
pop.v.v self.killtimer
push.v self.killtimer
pushi.e 35
cmp.i.v GT
bf [60]

:[59]
pushi.e 1
pop.v.i self.killactive

:[60]
push.v self.killactive
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.kill
push.d 0.08
add.d.v
pop.v.v self.kill
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[62]
push.v self.kill
pushi.e 1
cmp.i.v GT
bf [end]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[end]