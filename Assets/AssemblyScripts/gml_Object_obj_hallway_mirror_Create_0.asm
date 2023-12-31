.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.sx
pushi.e 0
pop.v.i self.sy
push.d 0.1
pop.v.d self.alpha
pushi.e 837
conv.i.v
pushi.e 70
conv.i.v
pushi.e 200
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.shadow
push.v self.depth
pushi.e 100
sub.i.v
push.v self.shadow
conv.v.i
pop.v.v [stacktop]self.depth

:[end]