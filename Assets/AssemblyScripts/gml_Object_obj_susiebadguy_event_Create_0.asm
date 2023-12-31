.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 690
conv.i.v
pushi.e 752
conv.i.v
pushi.e 1120
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.treestump
push.v self.treestump
conv.v.i
pushenv [2]

:[1]
push.i 950000
pop.v.i self.depth

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 70
cmp.i.v GTE
bf [4]

:[3]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushi.e 183
conv.i.v
push.v self.y
pushi.e 16
sub.i.v
push.v self.x
pushi.e 80
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s

:[end]