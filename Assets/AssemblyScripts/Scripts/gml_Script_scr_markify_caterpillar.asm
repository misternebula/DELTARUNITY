.localvar 0 arguments

:[0]
push.i 4378473
pop.v.i self.s
push.i 4387437
pop.v.i self.r
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[3]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [7]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [5]

:[7]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [11]

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]