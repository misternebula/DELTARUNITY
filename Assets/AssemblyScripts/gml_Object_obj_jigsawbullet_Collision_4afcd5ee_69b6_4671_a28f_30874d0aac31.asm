.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v other.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v other.active
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.locked
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.locked
push.v other.id
conv.v.i
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.locked

:[9]
popenv [8]
pushi.e 16
dup.i 0
push.i 0
cmp.i.i LTE
bt [31]

:[10]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [15]

:[11]
push.v self.x
push.v other.x
pushi.e 28
sub.i.v
cmp.v.v GTE
bf [13]

:[12]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[13]
push.v self.x
push.v other.x
pushi.e 28
sub.i.v
cmp.v.v GTE
bf [15]

:[14]
push.v other.x
pushi.e 1
add.i.v
pop.v.v other.x

:[15]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [20]

:[16]
push.v self.y
push.v other.y
pushi.e 28
sub.i.v
cmp.v.v GTE
bf [18]

:[17]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[18]
push.v self.y
push.v other.y
pushi.e 28
sub.i.v
cmp.v.v GTE
bf [20]

:[19]
push.v other.y
pushi.e 1
add.i.v
pop.v.v other.y

:[20]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [25]

:[21]
push.v self.x
push.v other.x
pushi.e 28
add.i.v
cmp.v.v LTE
bf [23]

:[22]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[23]
push.v self.x
push.v other.x
pushi.e 28
add.i.v
cmp.v.v LTE
bf [25]

:[24]
push.v other.x
pushi.e 1
sub.i.v
pop.v.v other.x

:[25]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [30]

:[26]
push.v self.y
push.v other.y
pushi.e 28
add.i.v
cmp.v.v LTE
bf [28]

:[27]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[28]
push.v self.y
push.v other.y
pushi.e 28
add.i.v
cmp.v.v LTE
bf [30]

:[29]
push.v other.y
pushi.e 1
sub.i.v
pop.v.v other.y

:[30]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [10]

:[31]
popz.i

:[end]