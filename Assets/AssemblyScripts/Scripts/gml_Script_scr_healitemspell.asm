.localvar 0 arguments

:[0]
pushbltn.v self.argument0
push.v self.star
call.i scr_heal(argc=2)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [8]

:[1]
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
pushenv [3]

:[2]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushbltn.v self.argument0
pop.v.v self.damage

:[3]
popenv [2]
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
bf [7]

:[4]
push.v self.dmgwr
conv.v.i
pushenv [6]

:[5]
pushi.e 3
pop.v.i self.specialmessage

:[6]
popenv [5]

:[7]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[8]
popenv [1]
pushi.e 15
pop.v.i global.spelldelay

:[end]