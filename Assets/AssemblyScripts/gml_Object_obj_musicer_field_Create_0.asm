.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 31
pop.v.i [array]global.flag
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[1]
push.s "field_of_hopes.ogg"@4969
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
pushi.e -5
pushi.e 209
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 1
pushi.e -5
pushi.e 209
pop.v.i [array]global.flag
pushi.e 132
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]