.localvar 0 arguments

:[0]
push.d 0.1
pushi.e -1
pushi.e 0
pop.v.d [array]self.scrollspeed
push.d 0.3
pushi.e -1
pushi.e 1
pop.v.d [array]self.scrollspeed
push.d 0.5
pushi.e -1
pushi.e 2
pop.v.d [array]self.scrollspeed
push.d 0.6
pushi.e -1
pushi.e 3
pop.v.d [array]self.scrollspeed
push.d 0.7
pushi.e -1
pushi.e 4
pop.v.d [array]self.scrollspeed
push.d 0.8
pushi.e -1
pushi.e 5
pop.v.d [array]self.scrollspeed
push.d 0.9
pushi.e -1
pushi.e 6
pop.v.d [array]self.scrollspeed
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xxx
push.v self.xxx
pushbltn.v self.room_width
pushi.e 640
sub.i.v
cmp.v.v GT
bf [4]

:[3]
pushbltn.v self.room_width
pushi.e 640
sub.i.v
pop.v.v self.xxx

:[4]
push.v self.xxx
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
push.v self.xxx
push.v self.xxx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
push.v self.i
pushi.e 3
conv.i.v
call.i __background_set(argc=3)
popz.v

:[6]
pushbltn.v self.room_width
pushi.e 640
sub.i.v
pop.v.v self.gg
push.v self.xxx
pushbltn.v self.room_width
pushi.e 640
sub.i.v
cmp.v.v GTE
bf [8]

:[7]
pushi.e 0
push.v self.gg
push.v self.gg
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.i
push.v self.i
pushi.e 3
conv.i.v
call.i __background_set(argc=3)
popz.v

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]