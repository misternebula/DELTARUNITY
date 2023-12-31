.localvar 0 arguments
.localvar 1 i 2753

:[0]
pushi.e 3
pop.v.i self.areas
pushi.e 120
pushi.e -1
pushi.e 0
pop.v.i [array]self.areax1
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.areay1
pushi.e 760
pushi.e -1
pushi.e 0
pop.v.i [array]self.areax2
pushi.e 580
pushi.e -1
pushi.e 0
pop.v.i [array]self.areay2
pushi.e 880
pushi.e -1
pushi.e 1
pop.v.i [array]self.areax1
pushi.e 360
pushi.e -1
pushi.e 1
pop.v.i [array]self.areay1
pushi.e 1360
pushi.e -1
pushi.e 1
pop.v.i [array]self.areax2
pushi.e 880
pushi.e -1
pushi.e 1
pop.v.i [array]self.areay2
pushi.e 200
pushi.e -1
pushi.e 2
pop.v.i [array]self.areax1
pushi.e 720
pushi.e -1
pushi.e 2
pop.v.i [array]self.areay1
pushi.e 760
pushi.e -1
pushi.e 2
pop.v.i [array]self.areax2
pushi.e 1360
pushi.e -1
pushi.e 2
pop.v.i [array]self.areay2
pushi.e 0
pop.v.i self.battlealpha
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bf [35]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [6]

:[3]
pushi.e 174
conv.i.v
pushi.e 160
pushi.e 80
pushloc.v local.i
mul.v.i
add.v.i
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.hspeed
pushi.e -5
pop.v.i self.vspeed

:[5]
popenv [4]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [11]

:[8]
pushi.e 174
conv.i.v
pushi.e 450
conv.i.v
pushi.e 520
pushi.e 80
pushloc.v local.i
mul.v.i
add.v.i
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.vspeed
pushi.e -5
pop.v.i self.hspeed

:[10]
popenv [9]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [7]

:[11]
pushi.e 0
pop.v.i local.i

:[12]
pushloc.v local.i
pushi.e 2
cmp.i.v LT
bf [16]

:[13]
pushi.e 174
conv.i.v
pushi.e 170
pushi.e 80
pushloc.v local.i
mul.v.i
sub.v.i
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [15]

:[14]
pushi.e 5
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[15]
popenv [14]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [12]

:[16]
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [21]

:[18]
pushi.e 174
conv.i.v
pushi.e 440
pushi.e 80
pushloc.v local.i
mul.v.i
sub.v.i
pushi.e 960
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [20]

:[19]
pushi.e 5
pop.v.i self.vspeed

:[20]
popenv [19]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [17]

:[21]
pushi.e 0
pop.v.i local.i

:[22]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [26]

:[23]
pushi.e 174
conv.i.v
pushi.e 40
pushi.e 80
pushloc.v local.i
mul.v.i
sub.v.i
pushi.e 960
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [25]

:[24]
pushi.e 5
pop.v.i self.vspeed

:[25]
popenv [24]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [22]

:[26]
pushi.e 174
conv.i.v
pushi.e 830
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [28]

:[27]
pushi.e -5
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[28]
popenv [27]
pushi.e 174
conv.i.v
pushi.e 820
conv.i.v
pushi.e 580
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [30]

:[29]
pushi.e 5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[30]
popenv [29]
pushi.e 174
conv.i.v
pushi.e 1050
conv.i.v
pushi.e 590
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [32]

:[31]
pushi.e 5
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[32]
popenv [31]
pushi.e 174
conv.i.v
pushi.e 1060
conv.i.v
pushi.e 290
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [34]

:[33]
pushi.e -5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[34]
popenv [33]

:[35]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [37]

:[36]
pushi.e 260
pushi.e -1
pushi.e 0
pop.v.i [array]self.areax1
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.areay1
pushi.e 1120
pushi.e -1
pushi.e 0
pop.v.i [array]self.areax2
pushi.e 820
pushi.e -1
pushi.e 0
pop.v.i [array]self.areay2
pushi.e 1
pop.v.i self.areas

:[37]
pushi.e 0
pop.v.i self.tile_fade
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bt [39]

:[38]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [end]

:[41]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.i 777777
conv.i.v
call.i tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[42]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[43]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i tile_set_alpha(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [42]

:[end]