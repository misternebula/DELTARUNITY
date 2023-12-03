.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i self.loop
pushi.e 0
pop.v.i self.noroom
pushi.e 999
pushi.e -5
pushi.e 8
pop.v.i [array]global.litem

:[1]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litem
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.argument0
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.litem
b [7]

:[4]
push.v self.i
pushi.e 8
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.noroom
b [7]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
call.i scr_litemname(argc=0)
popz.v

:[end]