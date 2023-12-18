.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [end]

:[1]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[2]
push.s "town.ogg"@6512
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.97
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[end]