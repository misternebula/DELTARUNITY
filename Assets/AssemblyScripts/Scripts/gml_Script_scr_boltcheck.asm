.localvar 0 arguments

:[0]
pushi.e 5
pushi.e -1
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.char
conv.v.i
pop.v.i [array]self.pressbuffer
pushi.e -1
pop.v.i self.qualifybolt
pushi.e 99
pop.v.i self.close
pushi.e 99
pop.v.i self.topclose
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [13]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
pushbltn.v self.argument0
cmp.v.v EQ
bf [4]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [12]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pop.v.v self.close
push.v self.close
pushi.e 15
cmp.i.v LT
bf [8]

:[7]
push.v self.close
pushi.e -5
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v self.close
push.v self.topclose
cmp.v.v LT
bf [12]

:[11]
push.v self.close
pop.v.v self.topclose
push.v self.i
pop.v.v self.qualifybolt

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[13]
push.v self.qualifybolt
pushi.e -1
cmp.i.v NEQ
bf [end]

:[14]
push.v self.topclose
call.i abs(argc=1)
pop.v.v self.p
pushi.e 191
conv.i.v
push.v self.y
pushi.e 38
pushbltn.v self.argument0
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.qualifybolt
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.burstbolt
push.v self.p
pushi.e 0
cmp.i.v EQ
bf [20]

:[15]
pushi.e -1
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 150
add.i.v
pop.i.v [array]self.points
push.v self.burstbolt
conv.v.i
pushenv [17]

:[16]
push.i 65535
pop.v.i self.image_blend

:[17]
popenv [16]
push.v self.burstbolt
conv.v.i
pushenv [19]

:[18]
push.d 0.2
pop.v.d self.mag

:[19]
popenv [18]

:[20]
push.v self.p
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e -1
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 120
add.i.v
pop.i.v [array]self.points

:[22]
push.v self.p
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e -1
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 110
add.i.v
pop.i.v [array]self.points

:[24]
push.v self.p
pushi.e 3
cmp.i.v GTE
bf [26]

:[25]
pushi.e -1
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 100
push.v self.topclose
call.i abs(argc=1)
pushi.e 2
mul.i.v
sub.v.i
add.v.v
pop.i.v [array]self.points
pushi.e -1
pushbltn.v self.argument0
conv.v.i
push.v [array]self.boltcolor
push.v self.burstbolt
conv.v.i
pop.v.v [stacktop]self.image_blend

:[26]
push.v self.p
pushi.e 15
cmp.i.v GTE
bf [28]

:[27]
pushi.e -1
pushbltn.v self.argument0
conv.v.i
push.v [array]self.charcolor
push.v self.burstbolt
conv.v.i
pop.v.v [stacktop]self.image_blend

:[28]
pushi.e 0
pushi.e -1
push.v self.qualifybolt
conv.v.i
pop.v.i [array]self.boltalive

:[end]