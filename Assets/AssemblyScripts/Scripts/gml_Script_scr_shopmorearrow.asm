.localvar 0 arguments

:[0]
push.v self.pagemax
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 280
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.i
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
pushi.e 5
push.v self.pagemax
add.v.i
pushi.e 12
cmp.i.v LT
bf [end]

:[3]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bf [7]

:[4]
pushi.e -5
pushi.e 5
push.v self.pagemax
add.v.i
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
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
pushi.e 440
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.i
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
b [end]

:[7]
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
pushi.e 440
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.i
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]