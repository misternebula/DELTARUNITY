.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument0
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitem
pop.v.v self.itemid
push.v self.itemid
call.i scr_iteminfo(argc=1)
popz.v
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument0
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitemnameb
push.v self.itemdescb
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument0
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitemdescb
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument0
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitemvalue
push.v self.usable
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument0
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitemusable
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]