.localvar 0 arguments

:[0]
push.v self.pos
push.v self.length
pushi.e 2
add.i.v
cmp.v.v LT
bf [end]

:[1]
call.i scr_textsound(argc=0)
popz.v

:[end]