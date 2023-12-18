.localvar 0 arguments

:[0]
pushi.e 6
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm
pushi.e 66
conv.i.v
push.v self.y
pushi.e 16
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 40
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.cs
push.v self.depth
push.v self.cs
conv.v.i
pop.v.v [stacktop]self.depth

:[end]