.localvar 0 arguments

:[0]
push.v self.FADEFACTOR
call.i draw_set_alpha(argc=1)
popz.v
push.v self.WHITEFADE
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [3]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[3]
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
push.v self.FADEUP
pushi.e 0
cmp.i.v GT
bf [end]

:[4]
push.v self.FADEFACTOR
pushi.e 1
cmp.i.v LT
bf [end]

:[5]
push.v self.FADEFACTOR
push.v self.FADEUP
add.v.v
pop.v.v self.FADEFACTOR

:[end]