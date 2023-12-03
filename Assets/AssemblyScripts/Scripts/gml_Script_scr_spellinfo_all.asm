.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.j

:[1]
push.v self.j
pushi.e 4
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [5]

:[4]
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spell
pop.v.v self.spellid
push.v self.spellid
call.i scr_spellinfo(argc=1)
popz.v
push.v self.spellname
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spellname
push.v self.spellnameb
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spellnameb
push.v self.spelldescb
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spelldescb
push.v self.spelldesc
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spelldesc
push.v self.cost
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spellcost
push.v self.spellusable
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spellusable
push.v self.spelltarget
pushi.e -5
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]global.spelltarget
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1]

:[end]