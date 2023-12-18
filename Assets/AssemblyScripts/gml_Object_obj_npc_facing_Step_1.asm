.localvar 0 arguments

:[0]
push.v self.normalanim
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
push.v 6.halt
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[7]
push.v 6.halt
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.remanimspeed
pop.v.v self.image_speed

:[9]
push.v self.normalanim
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
push.v self.normalanim
pushi.e 2
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [15]

:[13]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.dfacing
pop.v.v self.facing
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[15]
call.i scr_npcdir(argc=0)
popz.v

:[end]