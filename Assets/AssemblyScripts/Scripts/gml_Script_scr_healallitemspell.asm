.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i scr_healall(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [11]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [10]

:[3]
pushi.e 293
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
conv.v.i
pop.v.v [stacktop]self.target
call.i scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
conv.v.i
pushenv [5]

:[4]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushbltn.v self.argument0
pop.v.v self.damage

:[5]
popenv [4]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
cmp.v.v GTE
bf [9]

:[6]
push.v self.dmgwr
conv.v.i
pushenv [8]

:[7]
pushi.e 3
pop.v.i self.specialmessage

:[8]
popenv [7]

:[9]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[10]
popenv [3]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[11]
pushi.e 20
pop.v.i global.spelldelay

:[end]