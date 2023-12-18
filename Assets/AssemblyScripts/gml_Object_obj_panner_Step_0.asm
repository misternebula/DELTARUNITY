.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
push.v self.panx
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
push.v self.pany
add.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.pantimer
pushi.e 1
add.i.v
pop.v.v self.pantimer
push.v self.pantimer
push.v self.panmax
cmp.v.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]