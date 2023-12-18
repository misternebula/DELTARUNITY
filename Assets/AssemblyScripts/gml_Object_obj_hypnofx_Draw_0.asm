.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 400
conv.i.v
call.i random(argc=1)
pop.v.v self.initsiner
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.ringmax
cmp.v.v LT
bf [4]

:[3]
pushi.e 1
push.d 0.5
push.v self.i
mul.v.d
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ringsize
pushi.e 2
push.v self.i
pushi.e 12
mul.i.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ringradius
push.d 0.3
pushi.e -1
push.v self.i
conv.v.i
pop.v.d [array]self.ringspeed
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.ringalpha
push.v self.initsiner
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ringsiner
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [end]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
push.v self.ringmax
cmp.v.v LT
bf [15]

:[7]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.ringsiner
push.v self.i
pushi.e 2
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringalpha
mul.v.v
add.v.v
pop.i.v [array]self.ringsiner
push.v self.timer
pushi.e 12
cmp.i.v LT
bf [9]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringalpha
pushi.e 1
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.ringalpha
push.d 0.2
add.d.v
pop.i.v [array]self.ringalpha

:[12]
push.v self.timer
pushi.e 24
cmp.i.v GTE
bf [14]

:[13]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.ringalpha
push.d 0.1
sub.d.v
pop.i.v [array]self.ringalpha

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringsize
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringsize
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringsiner
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringradius
mul.v.v
add.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ringradius
mul.v.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 562
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[15]
push.v self.timer
pushi.e 38
cmp.i.v GTE
bf [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]