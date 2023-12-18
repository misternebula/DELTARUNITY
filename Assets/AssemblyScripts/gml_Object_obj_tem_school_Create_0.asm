.localvar 0 arguments

:[0]
pushi.e 143
pop.v.i self.dtsprite
pushi.e 145
pop.v.i self.rtsprite
pushi.e 144
pop.v.i self.ltsprite
pushi.e 143
pop.v.i self.utsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.ourcase
pushi.e 0
pop.v.i self.eggmake
pushi.e 0
pop.v.i self.egcon
pushi.e 0
pop.v.i self.egtimer
call.i scr_npcdir(argc=0)
popz.v
call.i scr_depth(argc=0)
popz.v

:[end]