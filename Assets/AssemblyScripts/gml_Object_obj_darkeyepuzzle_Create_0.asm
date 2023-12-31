.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.total
pushi.e -5
pushi.e 201
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
pushi.e 800
conv.i.v
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 30
add.i.v
push.v self.i
pushi.e 110
mul.i.v
add.v.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shine
push.d 0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shine
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 800000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shine
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 331
conv.i.v
pushi.e 320
conv.i.v
pushi.e 960
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 2
push.v self.block
conv.v.i
pop.v.i [stacktop]self.image_yscale
b [end]

:[5]
pushi.e 44
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.eye
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [8]

:[7]
pushi.e 820
conv.i.v
pushi.e 320
conv.i.v
pushi.e 960
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i scr_dark_marker(argc=3)
pop.v.v self.glass
push.i 950000
push.v self.glass
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 820
conv.i.v
pushi.e 360
conv.i.v
pushi.e 960
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i scr_dark_marker(argc=3)
pop.v.v self.glass
push.i 950000
push.v self.glass
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 223
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[end]