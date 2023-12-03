.localvar 0 arguments

:[0]
pushglb.v global.filechoice
pop.v.v self.filechoicebk2
pushi.e 9
pop.v.i global.filechoice
pushglb.v global.filechoice
call.i scr_saveprocess(argc=1)
popz.v
push.v self.filechoicebk2
pop.v.v global.filechoice

:[end]