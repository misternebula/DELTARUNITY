.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.xyz

:[1]
push.v self.xyz
pushi.e 3
cmp.i.v LT
bf [13]

:[2]
pushi.e 0
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.using
pushi.e 0
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.gotspell
pushi.e 0
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.gotitem
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charaction
pushi.e 2
cmp.i.v EQ
bf [7]

:[3]
push.v self.spelltotal
pushi.e 1
add.i.v
pop.v.v self.spelltotal
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.using
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.gotspell
push.v self.castyet
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [6]

:[5]
pushi.e 2
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer

:[6]
popenv [5]
pushi.e 1
pop.v.i self.castyet
push.v self.xyz
pushi.e 1
add.i.v
pop.v.v self.char
push.v self.xyz
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charspecial
call.i scr_spelltext(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
pop.v.v self.spellwriter

:[7]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bf [12]

:[8]
push.v self.spelltotal
pushi.e 1
add.i.v
pop.v.v self.spelltotal
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.using
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.gotitem
push.v self.castyet
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [11]

:[10]
pushi.e 4
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer

:[11]
popenv [10]
pushi.e 1
pop.v.i self.castyet
push.v self.xyz
pushi.e 1
add.i.v
pop.v.v self.char
push.v self.xyz
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charspecial
call.i scr_spelltext(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
pop.v.v self.spellwriter

:[12]
push.v self.xyz
pushi.e 1
add.i.v
pop.v.v self.xyz
b [1]

:[13]
pushi.e 1
pop.v.i self.active
pushi.e 90
pop.v.i global.spelldelay

:[end]