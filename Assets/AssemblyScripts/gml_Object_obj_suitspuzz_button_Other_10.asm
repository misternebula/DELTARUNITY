.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 217
pushenv [4]

:[2]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [2]

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
pushi.e 217
pushenv [9]

:[7]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [7]

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [15]

:[11]
pushi.e 217
pushenv [14]

:[12]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[14]
popenv [12]

:[15]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.press_timer
pushi.e 326
pushenv [17]

:[16]
pushi.e 3
pop.v.i self.onebuffer

:[17]
popenv [16]

:[end]