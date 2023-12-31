.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 255
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 128
conv.i.v
pushi.e 88
conv.i.v
pushi.e 118
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.n
push.i 100000
push.v self.n
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 250
pop.v.i self.sprite_index
b [3]

:[2]
pushi.e 84
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked

:[end]