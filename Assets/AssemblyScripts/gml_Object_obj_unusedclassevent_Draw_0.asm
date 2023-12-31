.localvar 0 arguments

:[0]
push.v self.lightsoff
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 900
conv.i.v
pushi.e 900
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]