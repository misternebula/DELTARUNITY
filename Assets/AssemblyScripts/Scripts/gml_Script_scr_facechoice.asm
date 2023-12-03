.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 5
push.v self.f
mul.v.i
add.v.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 8
push.v self.f
mul.v.i
add.v.v
call.i instance_create(argc=3)
pop.v.v self.myface

:[end]