.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [17]

:[1]
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.truew
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.trueh
push.v self.image_xscale
pop.v.v self.imgx
push.v self.image_yscale
pop.v.v self.imgy
push.v self.truew
pushi.e 50
cmp.i.v GTE
bt [3]

:[2]
push.v self.trueh
pushi.e 50
cmp.i.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 8
pop.v.i self.bsize

:[6]
push.v self.truew
pushi.e 100
cmp.i.v GTE
bt [8]

:[7]
push.v self.truew
pushi.e 100
cmp.i.v GTE
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 16
pop.v.i self.bsize

:[11]
push.v self.truew
push.v self.bsize
div.v.v
call.i ceil(argc=1)
pop.v.v self.xs
push.v self.trueh
push.v self.bsize
div.v.v
call.i ceil(argc=1)
pop.v.v self.ys
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
push.v self.xs
cmp.v.v LTE
bf [17]

:[13]
pushi.e 0
pop.v.i self.j

:[14]
push.v self.j
push.v self.ys
cmp.v.v LTE
bf [16]

:[15]
push.v self.i
push.v self.bsize
mul.v.v
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
pop.v.v [array]self.bl
push.v self.j
push.v self.bsize
mul.v.v
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
pop.v.v [array]self.bh
push.v self.x
push.v self.i
push.v self.bsize
mul.v.v
push.v self.imgx
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
pop.v.v [array]self.bx
pushi.e 0
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
pop.v.i [array]self.bspeed
pushi.e 4
push.v self.j
pushi.e 3
mul.i.v
add.v.i
push.v self.i
sub.v.v
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
pop.v.v [array]self.bsin
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [14]

:[16]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[17]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [28]

:[18]
push.v self.redup
pushi.e 10
cmp.i.v LT
bf [20]

:[19]
push.v self.redup
pushi.e 1
add.i.v
pop.v.v self.redup

:[20]
push.v self.redup
pushi.e 10
conv.i.d
div.d.v
pushi.e 255
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
push.v self.xs
cmp.v.v LTE
bf [28]

:[22]
pushi.e 0
pop.v.i self.j

:[23]
push.v self.j
push.v self.ys
cmp.v.v LTE
bf [27]

:[24]
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
push.v [array]self.bsin
pushi.e 0
cmp.i.v LTE
bf [26]

:[25]
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
dup.i 1
push.v [array]self.bspeed
pushi.e 1
add.i.v
pop.i.v [array]self.bspeed

:[26]
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
dup.i 1
push.v [array]self.bx
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
add.v.v
pop.i.v [array]self.bx
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
dup.i 1
push.v [array]self.bsin
pushi.e 1
sub.i.v
pop.i.v [array]self.bsin
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [23]

:[27]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[28]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]