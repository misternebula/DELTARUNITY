.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 400
pop.v.i self.x
pushi.e 300
pop.v.i self.y
pushi.e 0
pop.v.i self.bush_debris
pushi.e 724
conv.i.v
pushi.e 20
conv.i.v
pushi.e 305
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.bush
push.v self.bush
conv.v.i
pushenv [2]

:[1]
push.i 850000
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[2]
popenv [1]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.stat
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
pushi.e -5
pushi.e 226
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.bush
conv.v.i
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.image_index

:[8]
popenv [7]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]