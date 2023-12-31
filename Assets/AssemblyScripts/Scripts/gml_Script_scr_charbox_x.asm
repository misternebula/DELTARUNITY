.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
ret.v

:[5]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 212
conv.i.v
ret.v

:[10]
pushbltn.v self.argument0
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 424
conv.i.v
ret.v

:[15]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 106
conv.i.v
ret.v

:[20]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 326
conv.i.v
ret.v

:[25]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.chartotal
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [end]

:[29]
pushi.e 212
conv.i.v
ret.v

:[end]