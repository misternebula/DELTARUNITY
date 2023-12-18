.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [1]

:[1]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 326
pushenv [8]

:[7]
pushi.e 5
pop.v.i self.onebuffer

:[8]
popenv [7]

:[9]
push.v self.con
pushi.e 5
cmp.i.v GTE
bf [end]

:[10]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [14]

:[11]
push.v self.weirdlight
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 51
pop.v.i self.con
pushi.e 37
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index

:[14]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i global.interact

:[16]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [18]

:[17]
call.i d_ex(argc=0)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i global.interact
pushi.e 52
pop.v.i self.con
pushi.e 0
pop.v.i self.doortimer

:[21]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [26]

:[22]
push.v self.doortimer
pushi.e 1
add.i.v
pop.v.v self.doortimer
push.v self.doortimer
pushi.e 6
cmp.i.v GTE
bf [26]

:[23]
call.i snd_free_all(argc=0)
popz.v
pushi.e 36
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 909
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 10
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.dark_marker
push.v self.dark_marker
conv.v.i
pushenv [25]

:[24]
pushi.e 700
pop.v.i self.image_xscale
pushi.e 700
pop.v.i self.image_yscale
pushi.e -100
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_blend

:[25]
popenv [24]
pushi.e 53
pop.v.i self.con
pushi.e 0
pop.v.i self.doortimer

:[26]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [end]

:[27]
push.v self.doortimer
pushi.e 1
add.i.v
pop.v.v self.doortimer
push.v self.doortimer
pushi.e 30
cmp.i.v GTE
bf [end]

:[28]
pushi.e 0
pop.v.i global.facing
pushi.e 54
pop.v.i self.con
pushi.e 37
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i global.interact
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 23
pop.v.i global.entrance
push.v self.door_destination
call.i room_goto(argc=1)
popz.v

:[end]