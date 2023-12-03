.localvar 0 arguments

:[0]
pushglb.v global.filechoice
pop.v.v self.filechoicebk3
pushi.e 9
pop.v.i global.filechoice
call.i scr_load(argc=0)
popz.v
push.v self.filechoicebk3
pop.v.v global.filechoice

:[end]