.localvar 0 arguments

:[0]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[1]
pushi.e 5
pushenv [9]

:[2]
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pop.v.v self.wwx
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pop.v.v self.wwy

:[4]
pushi.e 2
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.writer
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
push.v global.msc
pushi.e 1
add.i.v
pop.v.v global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [2]

:[10]
pushi.e 0
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]

:[end]