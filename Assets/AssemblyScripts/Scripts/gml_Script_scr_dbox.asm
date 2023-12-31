.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xxx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yyy
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 80
add.i.v
push.v self.xxx
pushi.e 304
add.i.v
push.v self.yyy
pushi.e 5
add.i.v
push.v self.xxx
pushi.e 16
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 77
add.i.v
push.v self.xxx
pushi.e 301
add.i.v
push.v self.yyy
pushi.e 8
add.i.v
push.v self.xxx
pushi.e 19
add.i.v
call.i draw_rectangle(argc=5)
popz.v
b [4]

:[3]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 235
add.i.v
push.v self.xxx
pushi.e 304
add.i.v
push.v self.yyy
pushi.e 160
add.i.v
push.v self.xxx
pushi.e 16
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 232
add.i.v
push.v self.xxx
pushi.e 301
add.i.v
push.v self.yyy
pushi.e 163
add.i.v
push.v self.xxx
pushi.e 19
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[4]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 154
add.i.v
push.v self.xxx
pushi.e 602
add.i.v
push.v self.yyy
pushi.e 16
add.i.v
push.v self.xxx
pushi.e 38
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yyy
pushi.e 160
add.i.v
pushi.e 8
add.i.v
push.v self.xxx
pushi.e 608
add.i.v
pushi.e 8
add.i.v
push.v self.yyy
pushi.e 10
add.i.v
pushi.e 8
sub.i.v
push.v self.xxx
pushi.e 32
add.i.v
pushi.e 8
sub.i.v
call.i scr_darkbox(argc=4)
popz.v
b [end]

:[7]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 464
add.i.v
push.v self.xxx
pushi.e 602
add.i.v
push.v self.yyy
pushi.e 326
add.i.v
push.v self.xxx
pushi.e 38
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yyy
pushi.e 470
add.i.v
pushi.e 8
add.i.v
push.v self.xxx
pushi.e 608
add.i.v
pushi.e 8
add.i.v
push.v self.yyy
pushi.e 320
add.i.v
pushi.e 8
sub.i.v
push.v self.xxx
pushi.e 32
add.i.v
pushi.e 8
sub.i.v
call.i scr_darkbox(argc=4)
popz.v

:[end]