.localvar 0 arguments

:[0]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.canchoose
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.dar
push.v self.dar
pop.v.v self.image_xscale
push.v self.dar
pop.v.v self.image_yscale
pushbltn.v self.view_current
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.add
pushi.e 89
push.v self.dar
mul.v.i
push.v self.add
add.v.v
pop.v.v self.x
pushi.e 210
push.v self.dar
mul.v.i
pushbltn.v self.view_current
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
add.v.v
pop.v.v self.y
pushi.e -1
pop.v.i self.d
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 5.side
pop.v.v self.d

:[2]
push.v self.d
pushi.e -1
cmp.i.v EQ
bf [6]

:[3]
push.v 326.y
pushbltn.v self.view_current
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 130
push.v self.dar
mul.v.i
add.v.v
cmp.v.v GT
bf [5]

:[4]
push.v self.y
pushi.e 155
push.v self.dar
mul.v.i
sub.v.v
pop.v.v self.y

:[5]
b [8]

:[6]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 155
push.v self.dar
mul.v.i
sub.v.v
pop.v.v self.y

:[8]
pushi.e 0
pop.v.i self.mychoice
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i self.choiced

:[end]