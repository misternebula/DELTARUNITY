.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.removed
pushbltn.v self.argument0
call.i scr_keyitemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.loc
pushi.e 0
pop.v.i self.skip
pushi.e -5
pushi.e 0
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [3]

:[2]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [8]

:[7]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [13]

:[12]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 2
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[16]
pushi.e -5
pushi.e 3
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [18]

:[17]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 3
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[21]
pushi.e -5
pushi.e 4
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [23]

:[22]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 4
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[26]
pushi.e -5
pushi.e 5
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [28]

:[27]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 5
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[31]
pushi.e -5
pushi.e 6
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [33]

:[32]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 6
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[36]
pushi.e -5
pushi.e 7
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [38]

:[37]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 7
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[41]
pushi.e -5
pushi.e 8
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [43]

:[42]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 8
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[46]
pushi.e -5
pushi.e 9
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [48]

:[47]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 9
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[51]
pushi.e -5
pushi.e 10
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [53]

:[52]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 10
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[56]
pushi.e -5
pushi.e 11
push.v [array]global.keyitem
pushbltn.v self.argument0
cmp.v.v EQ
bf [58]

:[57]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 11
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[61]
pushi.e 0
conv.i.v
push.v self.loc
call.i scr_keyitemshift(argc=2)
popz.v
pushi.e 1
pop.v.i self.removed

:[end]