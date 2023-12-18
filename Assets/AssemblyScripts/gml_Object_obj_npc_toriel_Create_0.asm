.localvar 0 arguments

:[0]
pushi.e 97
pop.v.i self.dtsprite
pushi.e 102
pop.v.i self.rtsprite
pushi.e 104
pop.v.i self.ltsprite
pushi.e 100
pop.v.i self.utsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 0
pop.v.i self.image_speed
call.i scr_depth(argc=0)
popz.v

:[end]