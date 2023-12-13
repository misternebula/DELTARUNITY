.localvar 0 arguments

:[0]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [4]

:[3]
push.e 0

:[4]
bf [13]

:[5]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v self.initwd
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.wd
push.v self.y
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v self.initht
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.ht
push.v self.wd
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.ht
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.room_width
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [9]

:[8]
pushbltn.v self.room_width
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v

:[9]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[11]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [13]

:[12]
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[13]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushglb.v global.plot
pushi.e 245
cmp.i.v GTE
b [16]

:[15]
push.e 0

:[16]
bf [29]

:[17]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [29]

:[21]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pushi.e 11
add.i.v
pop.v.v self.wd
push.v self.y
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pushi.e 17
add.i.v
pop.v.v self.ht
push.v self.wd
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.ht
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v

:[23]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.room_width
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [25]

:[24]
pushbltn.v self.room_width
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v

:[25]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[27]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [29]

:[28]
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[29]
push.v self.bg
pushi.e 1
cmp.i.v EQ
bf [end]

:[30]
pushi.e 135
pushenv [32]

:[31]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[32]
popenv [31]

:[end]