.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.doit
pushglb.v global.plot
pushi.e 70
cmp.i.v LT
bf [2]

:[1]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.doit

:[5]
push.v self.doit
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[7]
push.s "forest.ogg"@4697
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[end]