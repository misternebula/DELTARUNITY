.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [10]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.wonmax
cmp.v.v LT
bf [10]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.block
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 331
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1280
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.block
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.block
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike1
conv.v.i
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.image_index

:[7]
popenv [6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike2
conv.v.i
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.image_index

:[9]
popenv [8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[10]
pushi.e 0
pop.v.i self.wonamt

:[end]