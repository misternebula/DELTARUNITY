.localvar 0 arguments

:[0]
push.v self.target
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 99
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
push.v self.fail
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.d 0.1
conv.d.v
push.v self.flashcolor
push.v self.target
conv.v.i
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.target
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.siner
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 183
conv.i.v
push.v self.target
conv.v.i
push.v [stacktop]self.y
push.v self.target
conv.v.i
push.v [stacktop]self.sprite_height
add.v.v
pushi.e 20
sub.i.v
push.v self.target
conv.v.i
push.v [stacktop]self.x
push.v self.target
conv.v.i
push.v [stacktop]self.sprite_width
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.ai
push.d 0.5
push.v self.ai
conv.v.i
pop.v.d [stacktop]self.gravity
pushi.e 368
push.v self.ai
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.ai
conv.v.i
pop.v.d [stacktop]self.image_speed

:[6]
push.v self.target
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.target
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
sub.v.v
pop.i.v [stacktop]self.y
b [8]

:[7]
pushi.e 0
pop.v.i self.siner
pushi.e 5
pop.v.i self.con

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[9]
push.v self.target
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.target
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 99
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [16]

:[15]
pushi.e 6
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [18]

:[17]
push.d 0.12
conv.d.v
push.v self.flashcolor
push.v self.target
conv.v.i
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.target
conv.v.i
pop.v.v [stacktop]self.image_blend

:[18]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [20]

:[19]
pushi.e 8
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [22]

:[21]
push.d 0.16
conv.d.v
push.i 16777215
conv.i.v
push.v self.target
conv.v.i
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.target
conv.v.i
pop.v.v [stacktop]self.image_blend

:[22]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [end]

:[23]
push.i 16777215
push.v self.target
conv.v.i
pop.v.i [stacktop]self.image_blend
call.i instance_destroy(argc=0)
popz.v

:[end]