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
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.keyitem
pop.v.v self.keyitemid
push.s " "@24
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.keyitemname
push.v self.keyitemid
call.i scr_keyiteminfo(argc=1)
popz.v
push.v self.tempkeyitemusable
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemusable
push.v self.tempkeyitemname
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemname
push.v self.tempkeyitemdesc
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.keyitemdesc
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]