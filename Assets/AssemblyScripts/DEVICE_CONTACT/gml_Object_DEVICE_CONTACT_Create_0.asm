.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.TIMER
pushi.e 0
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 0
pop.v.i self.OBMADE
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
pushi.e 666
pop.v.i global.typer
pushi.e 1
pop.v.i self.ALREADY
pushi.e 0
pop.v.i self.TRUE_ALREADY
pushi.e -5
pushi.e 10
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.TRUE_ALREADY

:[2]
pushi.e 10
pop.v.i self.SKIPBUFFER
pushi.e 0
pop.v.i self.FADED
push.d 0.4
pop.v.d self.FADEFACTOR
pushi.e 0
pop.v.i self.FADEUP
pushi.e 0
pop.v.i self.OB_DEPTH
pushi.e 0
pop.v.i self.obacktimer
push.d 0.5
pop.v.d self.OBM
push.s "AUDIO_DRONE.ogg"@9541
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
popz.v
pushi.e 0
pop.v.i self.WHITEFADE
push.s "DEVICE_CONTACT_slash_Create_0_gml_23_0"@9543
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [end]

:[3]
pushi.e 1
pushi.e -5
pushi.e 912
pop.v.i [array]global.flag

:[end]