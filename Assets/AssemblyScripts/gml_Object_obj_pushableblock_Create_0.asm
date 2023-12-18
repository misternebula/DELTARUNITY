.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer
pushi.e 1
pop.v.i self.event
pushi.e 0
pop.v.i self.myinteract
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 62
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 212
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]