.localvar 0 arguments

:[0]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
push.v self.damage
pop.v.v self.remdamage
push.v self.target
pop.v.v self._temptarget
pushi.e 0
pop.v.i self.ti

:[2]
push.v self.ti
pushi.e 3
cmp.i.v LT
bf [9]

:[3]
pushi.e -1
pop.v.i global.inv
push.v self.remdamage
pop.v.v self.damage
push.v self.ti
pop.v.v self.target
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i scr_damage(argc=0)
popz.v

:[8]
push.v self.ti
pushi.e 1
add.i.v
pop.v.v self.ti
b [2]

:[9]
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
push.v self._temptarget
pop.v.v self.target

:[end]