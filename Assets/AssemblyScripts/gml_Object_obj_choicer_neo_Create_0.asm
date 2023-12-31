.localvar 0 arguments

:[0]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.canchoose
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.dar
pushi.e 0
pushi.e -5
pushi.e 33
pop.v.i [array]global.flag
push.v self.dar
pop.v.v self.image_xscale
push.v self.dar
pop.v.v self.image_yscale
pushglb.v global.fc
pop.v.v self.remfc
pushi.e 0
pop.v.i global.fc
pushbltn.v self.view_current
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushbltn.v self.view_current
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e -1
pop.v.i self.d
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 5.side
pop.v.v self.d

:[2]
pushi.e 0
pop.v.i self.d_add
push.v self.d
pushi.e -1
cmp.i.v EQ
bf [6]

:[3]
push.v 326.y
pushbltn.v self.view_current
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 130
push.v self.dar
mul.v.i
add.v.v
cmp.v.v LTE
bf [5]

:[4]
pushi.e 155
pop.v.i self.d_add

:[5]
b [8]

:[6]
push.v self.d
pushi.e 0
cmp.i.v NEQ
bf [8]

:[7]
pushi.e 155
pop.v.i self.d_add

:[8]
pushi.e 140
push.v self.dar
mul.v.i
push.v self.xx
add.v.v
pop.v.v self.chx
pushi.e 36
push.v self.d_add
add.v.i
push.v self.dar
mul.v.v
push.v self.yy
add.v.v
pop.v.v self.chy
push.v self.chx
pop.v.v self.hx
push.v self.chy
pop.v.v self.hy
pushi.e -1
pop.v.i self.mychoice
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i self.choiced
pushi.e 3
pop.v.i self.choicetotal
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.textposx
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.textposy
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.textposx
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.textposy
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.textposx
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.textposy
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.textposx
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.textposy
pushi.e 0
pop.v.i self.candraw

:[end]