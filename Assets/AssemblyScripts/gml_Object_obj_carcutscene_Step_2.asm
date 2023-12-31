.localvar 0 arguments

:[0]
push.v self.dhaver
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.myd
conv.v.i
pushenv [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
pop.v.v self.writingx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
add.i.v
pop.v.v self.writingy

:[3]
popenv [2]

:[4]
push.v self.v
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.c
conv.v.i
push.v [stacktop]self.x
push.v self.vx
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.c
conv.v.i
push.v [stacktop]self.y
push.v self.vy
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[end]