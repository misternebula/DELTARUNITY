.localvar 0 arguments

:[0]
push.v self.actual
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.dir
pushi.e 2
add.i.v
pop.v.v self.dir
push.v self.dir
pushi.e 180
add.i.v
pop.v.v self.xdir
push.v self.norot
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [5]

:[4]
push.v self.i
pushi.e 2
mul.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 20
conv.i.d
div.d.v
push.v self.siner
pushi.e 60
conv.i.d
div.d.v
add.v.v
pop.v.v self.t
pushi.e 16
push.v self.t
call.i sin(argc=1)
push.v self.t
call.i sin(argc=1)
mul.v.v
push.v self.t
call.i sin(argc=1)
mul.v.v
mul.v.i
pop.v.v self.xx
pushi.e 13
push.v self.t
call.i cos(argc=1)
mul.v.i
pushi.e 5
pushi.e 2
push.v self.t
mul.v.i
call.i cos(argc=1)
mul.v.i
sub.v.v
pushi.e 2
pushi.e 3
push.v self.t
mul.v.i
call.i cos(argc=1)
mul.v.i
sub.v.v
pushi.e 4
push.v self.t
mul.v.i
call.i cos(argc=1)
sub.v.v
pop.v.v self.yy
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
push.v self.radius
mul.v.v
add.v.v
pop.v.v self.xxx
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
push.v self.radius
mul.v.v
sub.v.v
pop.v.v self.yyy
push.v self.yyy
push.v self.xxx
pushi.e 0
conv.i.v
pushi.e 513
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.actual
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [13]

:[7]
pushi.e 0
pop.v.i self.t

:[8]
push.v self.t
pushi.e 16
cmp.i.v LT
bf [12]

:[9]
pushi.e 194
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.t
conv.v.i
pop.v.v [array]self.bul
push.v self.damage
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
conv.v.i
pushenv [11]

:[10]
pushi.e 2
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_alpha
pushi.e 513
pop.v.i self.sprite_index

:[11]
popenv [10]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
b [8]

:[12]
pushi.e 1
pop.v.i self.made

:[13]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [17]

:[14]
push.v self.radius
push.v self.maxradius
cmp.v.v GT
bf [16]

:[15]
push.v self.radius
pushi.e 5
sub.i.v
pop.v.v self.radius
b [17]

:[16]
push.v self.radius
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.radius

:[17]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [24]

:[18]
push.v self.radius
push.v self.maxradius
cmp.v.v GT
bf [20]

:[19]
push.v self.radcon
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.radius
pushi.e 4
sub.i.v
pop.v.v self.radius
b [24]

:[23]
pushi.e 1
pop.v.i self.radcon
push.v self.radius
pushi.e 8
add.i.v
pop.v.v self.radius
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[24]
push.v self.dir
pushi.e 2
add.i.v
pop.v.v self.dir
push.v self.siner
push.d 1.5
add.d.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.tcount
pushi.e 0
pop.v.i self.t

:[25]
push.v self.t
pushi.e 16
cmp.i.v LT
bf [38]

:[26]
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[27]
push.v self.tcount
pushi.e 1
add.i.v
pop.v.v self.tcount
push.v self.radcon
pushi.e 0
cmp.i.v EQ
bf [32]

:[28]
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
conv.v.i
pushenv [31]

:[29]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [31]

:[30]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[31]
popenv [29]

:[32]
push.d 3.141592653589793
push.v self.t
mul.v.d
pushi.e 8
conv.i.d
div.d.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.radius
mul.v.v
pop.v.v self.xx
push.d 3.141592653589793
push.v self.t
mul.v.d
pushi.e 8
conv.i.d
div.d.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
push.v self.radius
mul.v.v
pop.v.v self.yy
push.v self.thisx
pushi.e 8
add.i.v
push.v self.xx
add.v.v
pop.v.v self.xxx
push.v self.thisy
pushi.e 8
add.i.v
push.v self.yy
sub.v.v
pop.v.v self.yyy
push.v self.xxx
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
conv.v.i
pop.v.v [stacktop]self.x
push.v self.yyy
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
conv.v.i
pop.v.v [stacktop]self.y
push.v self.radcon
pushi.e 1
cmp.i.v EQ
bf [37]

:[33]
pushi.e -1
push.v self.t
conv.v.i
push.v [array]self.bul
conv.v.i
pushenv [36]

:[34]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
cmp.d.v LTE
bf [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [34]

:[37]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
b [25]

:[38]
push.v self.tcount
pushi.e 0
cmp.i.v EQ
bf [end]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[end]