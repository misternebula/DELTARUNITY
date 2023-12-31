.localvar 0 arguments

:[0]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [4]

:[3]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.son
pushi.e 513
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1
pop.v.i self.made

:[5]
push.v self.pausetimer
pushi.e 1
add.i.v
pop.v.v self.pausetimer
push.v self.pausetimer
pushi.e 10
cmp.i.v GTE
bf [7]

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 7
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.con

:[10]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.maxlength
pushi.e 40
cmp.i.v LT
bf [12]

:[11]
push.v self.maxlength
pushi.e 4
add.i.v
pop.v.v self.maxlength

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
push.v self.x
push.v self.siner
pushi.e 3
mul.i.v
push.v self.i
pushi.e 90
mul.i.v
add.v.v
push.v self.maxlength
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.siner
pushi.e 3
mul.i.v
push.v self.i
pushi.e 90
mul.i.v
add.v.v
push.v self.maxlength
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.y

:[16]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[end]