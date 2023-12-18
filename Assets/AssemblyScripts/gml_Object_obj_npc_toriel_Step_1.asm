.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dfacing
pop.v.v self.facing

:[2]
call.i scr_npcdir(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushglb.v global.fc
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v 2.face_index
pop.v.v self.image_index
b [end]

:[7]
pushi.e 0
pop.v.i self.image_index

:[end]