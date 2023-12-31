.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.initx
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.inity
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v self.CANCEL
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [14]

:[5]
call.i left_p(argc=0)
conv.v.b
bf [7]

:[6]
pushi.e -1
push.v self.s
conv.v.i
dup.i 1
push.v [array]self.PART
pushi.e 1
sub.i.v
pop.i.v [array]self.PART

:[7]
call.i right_p(argc=0)
conv.v.b
bf [9]

:[8]
pushi.e -1
push.v self.s
conv.v.i
dup.i 1
push.v [array]self.PART
pushi.e 1
add.i.v
pop.i.v [array]self.PART

:[9]
call.i button1_p(argc=0)
conv.v.b
bf [11]

:[10]
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.LOCK
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.FINISH
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.PART
pushi.e -5
pushi.e 900
push.v self.s
add.v.i
conv.v.i
pop.v.v [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [42]

:[16]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PART
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTMAX
cmp.v.v GT
bf [18]

:[17]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTMAX
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PART

:[18]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PART
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.PART

:[20]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PART
pushi.e -50
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
cmp.v.v LT
bf [29]

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 0
cmp.i.v GTE
bf [23]

:[22]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
add.i.v
pop.i.v [array]self.PARTX

:[23]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 50
cmp.i.v GT
bf [25]

:[24]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
add.i.v
pop.i.v [array]self.PARTX

:[25]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 100
cmp.i.v GT
bf [27]

:[26]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
add.i.v
pop.i.v [array]self.PARTX

:[27]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 150
cmp.i.v GT
bf [29]

:[28]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
add.i.v
pop.i.v [array]self.PARTX

:[29]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
cmp.v.v GT
bf [38]

:[30]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 0
cmp.i.v GTE
bf [32]

:[31]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
sub.i.v
pop.i.v [array]self.PARTX

:[32]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 50
cmp.i.v GT
bf [34]

:[33]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
sub.i.v
pop.i.v [array]self.PARTX

:[34]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 100
cmp.i.v GT
bf [36]

:[35]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
sub.i.v
pop.i.v [array]self.PARTX

:[36]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
sub.v.v
call.i abs(argc=1)
pushi.e 150
cmp.i.v GT
bf [38]

:[37]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.PARTX
pushi.e 10
sub.i.v
pop.i.v [array]self.PARTX

:[38]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PARTX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
cmp.v.v EQ
bf [40]

:[39]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.LOCK
b [41]

:[40]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.LOCK

:[41]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[42]
push.v self.ONEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.ONEBUFFER
push.v self.FADEBUFFER
pushi.e 0
cmp.i.v GT
bf [44]

:[43]
push.v self.FINISH
pushi.e 0
cmp.i.v LTE
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.v self.FADEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.FADEBUFFER

:[47]
push.v self.FINISH
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.v self.FADEBUFFER
pushi.e 1
add.i.v
pop.v.v self.FADEBUFFER

:[49]
push.v self.FADEBUFFER
pushi.e 10
cmp.i.v GT
bf [end]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[end]