.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.grazed
pushi.e 10
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.dont
pushi.e 60
pop.v.i self.inv
pushi.e 20
pop.v.i self.damage
pushi.e 0
pop.v.i self.spec
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [2]

:[1]
pushi.e 10
pop.v.i self.damage

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LTE
bf [4]

:[3]
pushi.e 5
pop.v.i self.damage

:[4]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.loop
pushi.e 0
pop.v.i self.lcon
pushi.e 0
pop.v.i self.flip
pushi.e 0
pop.v.i self.ltimer
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.endcon
pushi.e 0
pop.v.i self.racecon
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
push.v self.yy
pushi.e 120
add.i.v
pop.v.v self.topy
push.v self.yy
pushi.e 250
add.i.v
pop.v.v self.bottomy

:[end]