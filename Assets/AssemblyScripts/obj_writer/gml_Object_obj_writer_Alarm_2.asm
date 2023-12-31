.localvar 0 arguments

:[0]
push.v self.firstnoise
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.firstnoise
call.i scr_textsound(argc=0)
popz.v

:[end]