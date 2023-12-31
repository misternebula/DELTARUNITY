.localvar 0 arguments

:[0]
push.v self.t
pushi.e 25
cmp.i.v LTE
bf [2]

:[1]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.t
pushi.e 25
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.active

:[4]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.hspeed
call.i abs(argc=1)
pop.v.v self.maxspeed
pushi.e 0
pop.v.i self.hspeed

:[6]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.siner
push.v self.sinspeed
add.v.v
pop.v.v self.siner
push.v self.siner
pushi.e 1
sub.i.v
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.sinfactor_0
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.sinfactor
push.v self.sinfactor
push.v self.sinfactor_0
sub.v.v
pop.v.v self.sinsign
push.v 188.x
push.v self.sinfactor
pushi.e 150
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.sinsign
pushi.e 50
mul.i.v
pop.v.v self.image_xscale
push.v self.image_xscale
pushi.e 2
cmp.i.v GT
bf [8]

:[7]
pushi.e 2
pop.v.i self.image_xscale

:[8]
push.v self.image_xscale
pushi.e -2
cmp.i.v LT
bf [10]

:[9]
pushi.e -2
pop.v.i self.image_xscale

:[10]
push.v self.sinsign
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 21
pop.v.i self.depth
pushi.e 0
pop.v.i self.active
push.i 8421504
pop.v.i self.image_blend

:[12]
push.v self.sinsign
pushi.e 0
cmp.i.v LT
bf [16]

:[13]
pushi.e 0
pop.v.i self.depth
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [15]

:[14]
pushi.e 1
pop.v.i self.active

:[15]
push.i 16777215
pop.v.i self.image_blend

:[16]
push.v self.vsin
pushi.e 1
add.i.v
pop.v.v self.vsin
push.v self.altmode
pushi.e 0
cmp.i.v EQ
bt [19]

:[17]
push.v self.altmode
pushi.e 2
cmp.i.v EQ
bt [19]

:[18]
push.v self.altmode
pushi.e 3
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.v self.y
push.v self.vsin
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 3.5
mul.d.v
add.v.v
pop.v.v self.y

:[22]
push.v self.altmode
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.y
push.v self.vsin
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 3.5
mul.d.v
sub.v.v
pop.v.v self.y

:[24]
push.v self.altmode
pushi.e 99
cmp.i.v EQ
bf [26]

:[25]
push.v self.altsin
pushi.e 1
add.i.v
pop.v.v self.altsin
push.v self.y
push.v self.altsin
pushi.e 20
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y

:[26]
push.v self.altmode
pushi.e 99
cmp.i.v EQ
bf [end]

:[27]
push.v self.altsin
pushi.e 1
add.i.v
pop.v.v self.altsin
push.v self.y
push.v self.altsin
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y

:[end]