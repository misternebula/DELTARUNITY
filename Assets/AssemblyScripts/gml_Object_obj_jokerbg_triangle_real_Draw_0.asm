.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i self.trimax
pushi.e 0
pop.v.i self.blackon
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.curx
pushi.e 0
push.v self.bgx
add.v.i
pop.v.v self.curl
push.v self.bgx
pushi.e 640
cmp.i.v GTE
bf [2]

:[1]
push.v self.bgx
pushi.e 640
sub.i.v
pop.v.v self.bgx

:[2]
pushi.e 1
pop.v.i self.curscale
pushi.e 0
pop.v.i self.tempscale
pushi.e 5
pop.v.i self.curw
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.bgalpha
pushi.e 1
cmp.i.v LT
bf [5]

:[4]
push.v self.bgalpha
push.d 0.02
add.d.v
pop.v.v self.bgalpha

:[5]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.v self.bgalpha
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.bgalpha
push.d 0.02
sub.d.v
pop.v.v self.bgalpha

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [13]

:[10]
push.v self.bgalpha
push.v self.dkblue3
pushi.e 1
conv.i.v
push.v self.curscale
push.v self.i
neg.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
add.v.v
push.v self.curx
pushi.e 300
conv.i.v
push.v self.curw
pushi.e 0
conv.i.v
push.v self.curl
pushi.e 0
conv.i.v
pushi.e 855
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
push.d 0.5
push.v self.i
mul.v.d
add.v.i
pop.v.v self.tempscale
push.v self.tempscale
call.i floor(argc=1)
pop.v.v self.curscale
push.v self.curl
pushi.e 5
add.i.v
pop.v.v self.curl
push.v self.curl
pushi.e 640
cmp.i.v GTE
bf [12]

:[11]
push.v self.curl
pushi.e 640
sub.i.v
pop.v.v self.curl

:[12]
pushi.e 5
pop.v.i self.curw
push.v self.curx
pushi.e 5
push.v self.curscale
mul.v.i
pushi.e 5
sub.i.v
add.v.v
pop.v.v self.curx
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[13]
pushi.e 16
pop.v.i self.i

:[14]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [20]

:[15]
push.v self.bgalpha
push.v self.dkblue3
pushi.e 1
conv.i.v
push.v self.curscale
push.v self.i
neg.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
add.v.v
push.v self.curx
pushi.e 380
conv.i.v
push.v self.curw
pushi.e 0
conv.i.v
push.v self.curl
pushi.e 0
conv.i.v
pushi.e 855
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
push.d 0.5
push.v self.i
mul.v.d
add.v.i
pop.v.v self.tempscale
push.v self.tempscale
pushi.e 1
cmp.i.v LT
bf [17]

:[16]
pushi.e 1
pop.v.i self.tempscale

:[17]
push.v self.tempscale
call.i ceil(argc=1)
pop.v.v self.curscale
push.v self.curl
pushi.e 5
add.i.v
pop.v.v self.curl
push.v self.curl
pushi.e 640
cmp.i.v GTE
bf [19]

:[18]
push.v self.curl
pushi.e 640
sub.i.v
pop.v.v self.curl

:[19]
pushi.e 5
pop.v.i self.curw
push.v self.curx
pushi.e 5
push.v self.curscale
mul.v.i
pushi.e 5
sub.i.v
add.v.v
pop.v.v self.curx
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [14]

:[20]
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
push.v self.trimax
cmp.v.v LT
bf [23]

:[22]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.ycen
push.v self.newy2
add.v.v
push.v self.xcen
push.v self.newx2
add.v.v
push.v self.ycen
push.v self.newy1
add.v.v
push.v self.xcen
push.v self.newx1
add.v.v
push.v self.ycen
push.v self.xcen
call.i draw_triangle(argc=7)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [32]

:[25]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.ng
push.v self.newy1
pushi.e 0
cmp.i.v GT
bt [27]

:[26]
push.v self.newy2
pushi.e 0
cmp.i.v GT
b [28]

:[27]
push.e 1

:[28]
bf [31]

:[29]
push.v self.newx2
push.v self.newx1
pushi.e 48
sub.i.v
cmp.v.v GT
bf [31]

:[30]
pushi.e 0
conv.i.v
push.v self.ycen
push.v self.newy2
pushi.e 6
conv.i.d
div.d.v
add.v.v
push.v self.xcen
push.v self.newx2
pushi.e 6
conv.i.d
div.d.v
add.v.v
push.v self.ycen
push.v self.newy1
pushi.e 6
conv.i.d
div.d.v
add.v.v
push.v self.xcen
push.v self.newx1
pushi.e 6
conv.i.d
div.d.v
add.v.v
push.v self.ycen
pushi.e 80
sub.i.v
push.v self.xcen
call.i draw_triangle(argc=7)
popz.v

:[31]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[32]
pushi.e 8
pop.v.i self.i

:[33]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [40]

:[34]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.newy1
pushi.e 0
cmp.i.v GT
bt [36]

:[35]
push.v self.newy2
pushi.e 0
cmp.i.v GT
b [37]

:[36]
push.e 1

:[37]
bf [39]

:[38]
pushi.e 0
conv.i.v
push.v self.ycen
push.v self.newy2
add.v.v
pushi.e 380
sub.i.v
push.v self.xcen
push.v self.newx2
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.ycen
push.v self.newy1
add.v.v
pushi.e 380
sub.i.v
push.v self.xcen
push.v self.newx1
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.ycen
pushi.e 80
sub.i.v
push.v self.xcen
call.i draw_triangle(argc=7)
popz.v

:[39]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [33]

:[40]
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
push.v self.trimax
cmp.v.v LT
bf [43]

:[42]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.ycen
push.v self.newy2
add.v.v
pushi.e 320
sub.i.v
push.v self.xcen
push.v self.newx2
add.v.v
push.v self.ycen
push.v self.newy1
add.v.v
pushi.e 320
sub.i.v
push.v self.xcen
push.v self.newx1
add.v.v
push.v self.ycen
pushi.e 320
sub.i.v
push.v self.xcen
call.i draw_triangle(argc=7)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[43]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.v self.rotcounter
pushi.e 1
add.i.v
pop.v.v self.rotcounter

:[45]
push.v self.rotcounter
push.v self.rotfps
cmp.v.v GTE
bf [47]

:[46]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [end]

:[49]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.rotspeed
pushi.e 1
cmp.i.v LT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.v self.rotspeed
push.d 0.1
add.d.v
pop.v.v self.rotspeed

:[54]
push.v self.bgx
pushi.e 1
push.v self.rotfps
mul.v.i
add.v.v
pop.v.v self.bgx
push.v self.rot
push.d 2.5
push.v self.rotfps
mul.v.d
push.v self.rotspeed
mul.v.v
add.v.v
pop.v.v self.rot
pushi.e 0
pop.v.i self.rotcounter

:[end]