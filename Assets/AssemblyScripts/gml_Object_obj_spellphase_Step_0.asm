.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.spelltimer
pushi.e 1
add.i.v
pop.v.v self.spelltimer
push.v self.spelltimer
pushglb.v global.spelldelay
cmp.v.v GTE
bf [3]

:[2]
push.v self.spellwriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.char
pushi.e 3
cmp.i.v GTE
bt [7]

:[6]
push.v self.spelltotal
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [12]

:[9]
call.i scr_attackphase(argc=0)
popz.v
push.v self.spellwriter
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [33]

:[13]
pushi.e -1
push.v self.char
conv.v.i
push.v [array]self.gotitem
pushi.e 1
cmp.i.v EQ
bf [19]

:[14]
pushi.e 1
pop.v.i self.re_castyet
pushi.e -5
push.v self.char
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [16]

:[15]
pushi.e 4
pop.v.i self.state

:[16]
popenv [15]
push.v self.spellwriter
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
push.v self.char
pushi.e -5
push.v self.char
conv.v.i
push.v [array]global.charspecial
call.i scr_spelltext(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
pop.v.v self.spellwriter

:[19]
pushi.e -1
push.v self.char
conv.v.i
push.v [array]self.gotspell
pushi.e 1
cmp.i.v EQ
bf [25]

:[20]
pushi.e 1
pop.v.i self.re_castyet
pushi.e -5
push.v self.char
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.state

:[22]
popenv [21]
push.v self.spellwriter
conv.v.i
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
push.v self.char
pushi.e -5
push.v self.char
conv.v.i
push.v [array]global.charspecial
call.i scr_spelltext(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
pop.v.v self.spellwriter

:[25]
pushi.e 90
pop.v.i global.spelldelay
push.v self.re_castyet
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1
pop.v.i global.spelldelay

:[27]
push.v self.char
pushi.e 1
add.i.v
pop.v.v self.char
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [32]

:[28]
push.v self.char
pushi.e 3
cmp.i.v LT
bf [31]

:[29]
pushi.e -1
push.v self.char
conv.v.i
push.v [array]self.using
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v self.char
pushi.e 1
add.i.v
pop.v.v self.char

:[31]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [28]

:[32]
popz.i
pushi.e 0
pop.v.i self.spelltimer
pushi.e 0
pop.v.i self.re_castyet
b [end]

:[33]
call.i scr_attackphase(argc=0)
popz.v
push.v self.spellwriter
conv.v.i
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
call.i instance_destroy(argc=0)
popz.v

:[end]