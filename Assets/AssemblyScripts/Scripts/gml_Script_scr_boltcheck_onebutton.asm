.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.dualbolt
pushi.e -1
pop.v.i self.dualboltid
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.pressbuffer
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.pressbuffer
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.pressbuffer
pushi.e -1
pop.v.i self.qualifybolt
pushi.e 99
pop.v.i self.close
pushi.e 999
pop.v.i self.topclose
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [12]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
bf [11]

:[3]
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
bf [5]

:[4]
push.v self.close
pushi.e -5
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [11]

:[7]
push.v self.close
push.v self.topclose
cmp.v.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.dualbolt
push.v self.i
pop.v.v self.dualboltid

:[9]
push.v self.close
push.v self.topclose
cmp.v.v LT
bf [11]

:[10]
push.v self.close
pop.v.v self.topclose
push.v self.i
pop.v.v self.qualifybolt

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[12]
push.v self.qualifybolt
pushi.e -1
cmp.i.v NEQ
bf [end]

:[13]
pushi.e -1
push.v self.qualifybolt
conv.v.i
push.v [array]self.boltchar
pop.v.v self.bc
push.v self.topclose
call.i abs(argc=1)
pop.v.v self.p
pushi.e 191
conv.i.v
push.v self.y
pushi.e 38
push.v self.bc
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
bf [19]

:[14]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 150
add.i.v
pop.i.v [array]self.points
push.v self.burstbolt
conv.v.i
pushenv [16]

:[15]
push.i 65535
pop.v.i self.image_blend

:[16]
popenv [15]
push.v self.burstbolt
conv.v.i
pushenv [18]

:[17]
push.d 0.2
pop.v.d self.mag

:[18]
popenv [17]

:[19]
push.v self.p
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 120
add.i.v
pop.i.v [array]self.points

:[21]
push.v self.p
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 110
add.i.v
pop.i.v [array]self.points

:[23]
push.v self.p
pushi.e 3
cmp.i.v GTE
bf [25]

:[24]
pushi.e -1
push.v self.bc
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
push.v self.bc
conv.v.i
push.v [array]self.boltcolor
push.v self.burstbolt
conv.v.i
pop.v.v [stacktop]self.image_blend

:[25]
push.v self.p
pushi.e 15
cmp.i.v GTE
bf [27]

:[26]
pushi.e -1
push.v self.bc
conv.v.i
push.v [array]self.charcolor
push.v self.burstbolt
conv.v.i
pop.v.v [stacktop]self.image_blend

:[27]
pushi.e 0
pushi.e -1
push.v self.qualifybolt
conv.v.i
pop.v.i [array]self.boltalive
push.v self.dualbolt
pushi.e 1
cmp.i.v EQ
bf [end]

:[28]
pushi.e -1
push.v self.dualboltid
conv.v.i
push.v [array]self.boltchar
pop.v.v self.bc
push.v self.topclose
call.i abs(argc=1)
pop.v.v self.p
pushi.e 191
conv.i.v
push.v self.y
pushi.e 38
push.v self.bc
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.dualboltid
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
bf [34]

:[29]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 150
add.i.v
pop.i.v [array]self.points
push.v self.burstbolt
conv.v.i
pushenv [31]

:[30]
push.i 65535
pop.v.i self.image_blend

:[31]
popenv [30]
push.v self.burstbolt
conv.v.i
pushenv [33]

:[32]
push.d 0.2
pop.v.d self.mag

:[33]
popenv [32]

:[34]
push.v self.p
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 120
add.i.v
pop.i.v [array]self.points

:[36]
push.v self.p
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 110
add.i.v
pop.i.v [array]self.points

:[38]
push.v self.p
pushi.e 3
cmp.i.v GTE
bf [40]

:[39]
pushi.e -1
push.v self.bc
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
push.v self.bc
conv.v.i
push.v [array]self.boltcolor
push.v self.burstbolt
conv.v.i
pop.v.v [stacktop]self.image_blend

:[40]
push.v self.p
pushi.e 15
cmp.i.v GTE
bf [42]

:[41]
pushi.e -1
push.v self.bc
conv.v.i
push.v [array]self.charcolor
push.v self.burstbolt
conv.v.i
pop.v.v [stacktop]self.image_blend

:[42]
pushi.e 0
pushi.e -1
push.v self.dualboltid
conv.v.i
pop.v.i [array]self.boltalive

:[end]