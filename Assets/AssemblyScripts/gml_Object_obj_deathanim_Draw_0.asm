.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [end]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.xs
cmp.v.v LTE
bf [9]

:[5]
pushi.e 0
pop.v.i self.j

:[6]
push.v self.j
push.v self.ys
cmp.v.v LTE
bf [8]

:[7]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bspeed
pushi.e 12
conv.i.d
div.d.v
sub.v.i
push.v self.image_blend
push.v self.imgy
push.v self.imgx
push.v self.y
push.v self.j
push.v self.bsize
mul.v.v
push.v self.imgy
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bx
push.v self.bsize
push.v self.bsize
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bh
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bl
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [6]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[9]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
push.v self.ys
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bspeed
pushi.e 12
cmp.i.v GTE
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]