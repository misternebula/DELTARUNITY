.localvar 0 arguments

:[0]
pushi.e 99
pop.v.i self.btimer
pushi.e 12
pop.v.i self.timermax
pushi.e 1
pop.v.i self.difficulty
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.joker
pushi.e 1
pop.v.i self.side
pushi.e 100
pop.v.i self.damage
pushi.e 1
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.timepoints
pushi.e 60
pop.v.i self.inv
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.special
pushi.e 150
pop.v.i self.miny
pushi.e 280
pop.v.i self.maxy
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.miny
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy

:[2]
pushi.e 1
pop.v.i self.ratio
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.d 1.6
pop.v.d self.ratio

:[4]
call.i scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [end]

:[5]
push.d 2.3
pop.v.d self.ratio

:[end]