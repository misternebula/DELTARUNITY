.localvar 0 arguments

:[0]
push.v self.alertcon
pushi.e 1
cmp.i.v GTE
bf [3]

:[1]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.ignoresolid
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 336
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bt [7]

:[6]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 334
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
b [8]

:[7]
push.e 1

:[8]
bf [end]

:[9]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[end]