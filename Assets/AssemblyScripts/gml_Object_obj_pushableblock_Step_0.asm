.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v self.movecourse
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x

:[3]
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 8
add.i.v
pop.v.v self.y

:[5]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y

:[7]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.x
pushi.e 8
sub.i.v
pop.v.v self.x

:[9]
pushi.e 365
pop.v.i self.sprite_index
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 5
cmp.i.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.movecourse

:[11]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[12]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[13]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 326
pushenv [15]

:[14]
pushi.e 5
pop.v.i self.onebuffer

:[15]
popenv [14]

:[end]