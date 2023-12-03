.localvar 0 arguments

:[0]
pushi.e 304
conv.i.v
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monstery
pushi.e 20
add.i.v
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterx
call.i instance_create(argc=3)
pop.v.v self.dm
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
pushi.e 1
sub.i.v
push.v self.dm
conv.v.i
pop.v.v [stacktop]self.type
pushbltn.v self.argument1
push.v self.dm
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e -5
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]global.monsterhp
pushbltn.v self.argument1
sub.v.v
pop.i.v [array]global.monsterhp
pushbltn.v self.argument1
pushi.e 0
cmp.i.v GT
bf [5]

:[1]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [3]

:[2]
pushi.e 9
pop.v.i self.shakex
pushi.e 3
pop.v.i self.state
pushi.e 30
pop.v.i self.hurttimer

:[3]
popenv [2]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushbltn.v self.argument1
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pop.v.v [stacktop]self.hurtamt

:[5]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]global.hittarget
pushi.e 1
add.i.v
pop.i.v [array]global.hittarget
pushbltn.v self.argument1
pushi.e 0
cmp.i.v EQ
bf [13]

:[6]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [12]

:[7]
pushi.e 0
pop.v.i self.hurtamt
push.v self.hurttimer
pushi.e 15
cmp.i.v LTE
bf [9]

:[8]
push.v self.candodge
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 4
pop.v.i self.state

:[12]
popenv [7]

:[13]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v LTE
bf [end]

:[14]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [16]

:[15]
call.i scr_monsterdefeat(argc=0)
popz.v

:[16]
popenv [15]

:[end]