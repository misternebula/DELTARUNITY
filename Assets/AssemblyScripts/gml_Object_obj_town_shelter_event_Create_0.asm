.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.s "mus_birdnoise.ogg"@3694
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[2]
pushi.e 28
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.dk
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.dk
call.i snd_volume(argc=3)
popz.v
push.d 0.15
conv.d.v
push.v self.dk
call.i snd_pitch(argc=2)
popz.v
call.i scr_depth(argc=0)
popz.v

:[end]