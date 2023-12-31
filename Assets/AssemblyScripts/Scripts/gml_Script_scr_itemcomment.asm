.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i scr_charbox_x(argc=1)
pop.v.v self.talkx
pushi.e 168
conv.i.v
push.v self.yy
pushi.e 460
add.i.v
push.v self.talkx
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.itemcomment
pushbltn.v self.argument1
push.v self.itemcomment
conv.v.i
pop.v.v [stacktop]self.msg
pushbltn.v self.argument0
push.v self.itemcomment
conv.v.i
pop.v.v [stacktop]self.who
pushi.e -5
pushi.e 32
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.itemcomment
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]