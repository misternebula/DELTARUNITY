.localvar 0 arguments

:[0]
push.v self.cur_jewel
pushi.e 1
add.i.v
pop.v.v self.cur_jewel
pushbltn.v self.argument2
pushbltn.v self.argument0
sub.v.v
pushi.e 63
sub.i.v
pop.v.v self.textbox_width
push.v self.textbox_width
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.textbox_width

:[2]
pushbltn.v self.argument3
pushbltn.v self.argument1
sub.v.v
pushi.e 63
sub.i.v
pop.v.v self.textbox_height
push.v self.textbox_height
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.textbox_height

:[4]
push.v self.textbox_width
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 32
conv.i.v
push.v self.textbox_width
pushbltn.v self.argument1
pushbltn.v self.argument0
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 802
conv.i.v
call.i draw_sprite_stretched(argc=6)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
push.v self.textbox_width
pushbltn.v self.argument3
pushi.e 1
add.i.v
pushbltn.v self.argument0
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 802
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.textbox_height
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.textbox_height
pushi.e -2
conv.i.v
pushbltn.v self.argument1
pushi.e 32
add.i.v
pushbltn.v self.argument2
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 803
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.textbox_height
pushi.e 2
conv.i.v
pushbltn.v self.argument1
pushi.e 32
add.i.v
pushbltn.v self.argument0
pushi.e 0
conv.i.v
pushi.e 803
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
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
pushbltn.v self.argument1
pushbltn.v self.argument0
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 801
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
pushi.e -2
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument2
pushi.e 1
add.i.v
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 801
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v self.argument3
pushi.e 1
add.i.v
pushbltn.v self.argument0
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 801
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
pushbltn.v self.argument3
pushi.e 1
add.i.v
pushbltn.v self.argument2
pushi.e 1
add.i.v
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 801
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[10]
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
pushbltn.v self.argument1
pushbltn.v self.argument0
pushi.e 0
conv.i.v
pushi.e 801
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
pushi.e -2
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument2
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 801
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v self.argument3
pushi.e 1
add.i.v
pushbltn.v self.argument0
pushi.e 0
conv.i.v
pushi.e 801
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
pushbltn.v self.argument3
pushi.e 1
add.i.v
pushbltn.v self.argument2
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 801
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]