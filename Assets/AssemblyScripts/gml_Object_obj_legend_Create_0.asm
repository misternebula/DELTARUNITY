.localvar 0 arguments

:[0]
push.s "legend.ogg"@9992
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.95
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_pitch(argc=2)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.ytimer
pushi.e 0
pop.v.i self.xtimer
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.xoff
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.fadecolor
pushi.e 0
pop.v.i self.chunkfade
pushi.e 1
pop.v.i self.chunkamt
pushi.e 1
pop.v.i self.border
pushi.e 840
pop.v.i self.pic
push.d 0.02
pop.v.d self.fadespeed
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.textimer
pushi.e 0
pop.v.i self.ingame
pushglb.v global.plot
pushi.e 20
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.ingame

:[2]
pushi.e 0
pop.v.i self.skipped
pushi.e 0
pop.v.i self.skiptimer

:[end]