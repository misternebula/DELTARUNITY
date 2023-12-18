.localvar 0 arguments

:[0]
push.v self.PHASE
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.factor
push.d 0.003
push.v self.siner
pushi.e 900
conv.i.d
div.d.v
add.v.d
sub.v.v
pop.v.v self.factor
push.v self.factor
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.factor
pushi.e 1
pop.v.i self.PHASE

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.h
cmp.v.v LT
bf [6]

:[5]
push.v self.siner
pushi.e 25
conv.i.d
div.d.v
push.v self.i
push.v self.mid
sub.v.v
call.i abs(argc=1)
push.d 0.05
mul.d.v
sub.v.v
pop.v.v self.ia
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
push.v self.i
pushi.e 3
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
mul.v.i
push.v self.factor
mul.v.v
pop.v.v self.xoff
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
push.v self.i
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.d 0.6
add.d.v
call.i sin(argc=1)
mul.v.i
push.v self.factor
mul.v.v
pop.v.v self.xoff2
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
push.v self.i
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.d 1.2
add.d.v
call.i sin(argc=1)
mul.v.i
push.v self.factor
mul.v.v
pop.v.v self.xoff3
pushi.e 1
push.v self.factor
sub.v.i
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.xoff
add.v.v
pushi.e 2
conv.i.v
push.v self.w
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
push.v self.factor
sub.v.i
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.xoff2
add.v.v
pushi.e 2
conv.i.v
push.v self.w
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
push.v self.factor
sub.v.i
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.xoff3
add.v.v
pushi.e 2
conv.i.v
push.v self.w
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.v self.PHASE
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
call.i draw_self(argc=0)
popz.v
push.v self.PHASETIMER
pushi.e 1
add.i.v
pop.v.v self.PHASETIMER
push.v self.PHASETIMER
pushi.e 30
cmp.i.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.factor
pushi.e 2
pop.v.i self.PHASE
push.s "PROCESS_LOGO_slash_Draw_0_gml_37_0"@9875
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.tempflag

:[9]
push.v self.PHASE
pushi.e 2
cmp.i.v EQ
bf [30]

:[10]
push.v self.PHASEPLUS
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner

:[12]
push.v self.siner
pushi.e 20
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.PHASEPLUS

:[14]
push.v self.PHASEPLUS
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.AA
push.d 0.02
sub.d.v
pop.v.v self.AA
push.v self.AB
push.d 0.08
sub.d.v
pop.v.v self.AB

:[16]
push.v self.AB
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
pop.v.v self.mina
push.v self.mina
push.d 0.14
cmp.d.v GTE
bf [18]

:[17]
push.d 0.14
pop.v.d self.mina

:[18]
push.v self.factor2
push.d 0.05
add.d.v
pop.v.v self.factor2
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [21]

:[20]
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.image_index
pushi.e 899
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.image_index
pushi.e 899
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
sub.v.v
push.v self.image_index
pushi.e 899
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mina
push.v self.AA
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
push.v self.factor2
mul.v.v
mul.v.v
add.v.v
push.v self.image_index
pushi.e 899
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[21]
push.v self.AA
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 900
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.AA
push.d -0.46
cmp.d.v LTE
bf [23]

:[22]
pushi.e 30
pop.v.i self.room_speed

:[23]
push.v self.AA
push.d -0.5
cmp.d.v LTE
bf [25]

:[24]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [30]

:[27]
push.v self.ingame
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 140
conv.i.v
call.i room_goto(argc=1)
popz.v
b [30]

:[29]
pushi.e 139
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
push.v self.ingame
pushi.e 0
cmp.i.v EQ
bf [end]

:[31]
call.i button1_p(argc=0)
conv.v.b
bf [33]

:[32]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [38]

:[35]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
conv.v.i
pushenv [37]

:[36]
push.d 0.04
pop.v.d self.fadespeed

:[37]
popenv [36]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
push.v self.NOISE
call.i snd_volume(argc=3)
popz.v
pushi.e 1
pop.v.i self.skipped

:[38]
push.v self.skipped
pushi.e 1
cmp.i.v EQ
bf [end]

:[39]
push.v self.skiptimer
pushi.e 1
add.i.v
pop.v.v self.skiptimer
push.v self.skiptimer
pushi.e 28
cmp.i.v GTE
bf [41]

:[40]
pushi.e 30
pop.v.i self.room_speed

:[41]
push.v self.skiptimer
pushi.e 30
cmp.i.v GTE
bf [end]

:[42]
pushi.e 139
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]