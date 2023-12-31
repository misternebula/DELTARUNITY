.localvar 0 arguments

:[0]
push.v self.facing_timer
pushi.e 1
add.i.v
pop.v.v self.facing_timer
push.v self.facing_timer
pushi.e 6
cmp.i.v LTE
bf [end]

:[1]
push.v self.rem_facing
pushi.e 0
cmp.i.v GTE
bf [end]

:[2]
push.v self.rem_facing
pop.v.v global.facing

:[end]