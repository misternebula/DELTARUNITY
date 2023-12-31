.localvar 0 arguments

:[0]
push.v self.siner
push.d 1.5
add.d.v
pop.v.v self.siner
push.v self.t
pushi.e 400
cmp.i.v GTE
bf [5]

:[1]
push.v self.rs
push.d 0.5
add.d.v
pop.v.v self.rs
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
push.v self.rs
pushi.e 16
conv.i.d
div.d.v
push.v self.i
pushi.e 12
conv.i.d
div.d.v
sub.v.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 500
conv.i.v
pushi.e 320
push.v self.i
push.v self.i
mul.v.v
add.v.i
push.v self.rs
push.v self.i
mul.v.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 320
push.v self.i
push.v self.i
mul.v.v
sub.v.i
push.v self.rs
push.v self.i
mul.v.v
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[5]
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 1.6
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 1.6
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.t
pushi.e 20
cmp.i.v GTE
bf [8]

:[6]
push.v self.soundcon
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.soundcon
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 136
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[8]
push.v self.t
pushi.e 70
cmp.i.v GTE
bf [10]

:[9]
push.v self.t
pushi.e 240
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 158
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.adjust
push.v self.eyebody
push.d 0.98
mul.d.v
pop.v.v self.eyebody

:[14]
popenv [13]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[15]
push.v self.t
pushi.e 240
cmp.i.v GTE
bf [17]

:[16]
push.v self.t
pushi.e 245
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
pushi.e 158
pushenv [21]

:[20]
pushi.e 2
pop.v.i self.adjust

:[21]
popenv [20]
pushi.e 300
pop.v.i self.t

:[22]
push.v self.t
pushi.e 390
cmp.i.v GTE
bf [24]

:[23]
push.v self.t
pushi.e 395
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [28]

:[26]
pushi.e 400
pop.v.i self.t
pushi.e 3
pop.v.i self.siner
push.v self.soundcon
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
pop.v.i self.soundcon
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 135
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[28]
push.v self.t
pushi.e 450
cmp.i.v GTE
bf [30]

:[29]
push.v self.ds2
push.d 0.02
add.d.v
pop.v.v self.ds2
push.v self.ds2
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[30]
push.v self.t
pushi.e 520
cmp.i.v GTE
bf [32]

:[31]
push.v self.ds3
push.d 0.01
add.d.v
pop.v.v self.ds3
push.v self.ds3
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[32]
push.v self.t
pushi.e 650
cmp.i.v GTE
bf [end]

:[33]
pushi.e 0
pop.v.i global.entrance
pushi.e 1
pop.v.i global.interact
call.i scr_become_light(argc=0)
popz.v
call.i snd_free_all(argc=0)
popz.v
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 33
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]