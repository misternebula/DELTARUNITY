.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 0
pop.v.i self.active
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.skippable
pushi.e 0
pop.v.i self.free
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xxx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yyy
push.i 432432
pop.v.i self.writer
pushi.e 1
pop.v.i self.side
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[1]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v 326.y
push.v self.yyy
pushi.e 130
add.i.v
cmp.v.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i self.side

:[4]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v 326.y
push.v self.yyy
pushi.e 250
add.i.v
cmp.v.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i self.side

:[7]
pushi.e 1
pop.v.i self.f
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
pushi.e 2
pop.v.i self.f

:[end]