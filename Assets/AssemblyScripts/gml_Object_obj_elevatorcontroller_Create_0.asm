.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 31
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.shakecon
pushi.e 0
pop.v.i self.charadjustcon
pushi.e 0
pop.v.i self.rectcon
pushi.e 0
pop.v.i self.rectspeed
pushi.e 0
pop.v.i self.rect_alpha
pushi.e 0
pop.v.i self.recty
pushi.e 1
pop.v.i self.dir
pushi.e 0
pop.v.i self.newcno
pushi.e -5
pushi.e 239
push.v [array]global.flag
pop.v.v self.cno
pushi.e 5
pop.v.i self.cmax
push.i 16777215
pushi.e -1
pushi.e 0
pop.v.i [array]self.bg_c
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.bg_c
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.bg_c
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711935
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.bg_c
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 4235519
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.bg_c
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.bg_c
push.d 0.25
conv.d.v
push.i 16777215
conv.i.v
push.i 4210752
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.bg_c
push.d 0.67
conv.d.v
push.i 16777215
conv.i.v
push.i 4210752
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.bg_c
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.i 4210752
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.bg_c
push.d 0.5
conv.d.v
push.i 8388608
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.bg_c
pushi.e -1
push.v self.cno
conv.v.i
push.v [array]self.bg_c
pop.v.v self.prev_bg_c
pushi.e -1
push.v self.cno
conv.v.i
push.v [array]self.bg_c
pop.v.v self.cur_bg_c
pushi.e -1
push.v self.cno
conv.v.i
push.v [array]self.bg_c
pop.v.v self.ideal_bg_c
pushi.e 0
pop.v.i self.merge_amt
push.d 0.1
pop.v.d self.mergespeed
pushi.e 0
pop.v.i self.mergecon
pushi.e 0
pop.v.i self.mergetimer
pushi.e 0
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movetimer
pushi.e 600
pop.v.i self.rectspacing
pushi.e 0
pop.v.i self.doorcon
pushi.e 40
pop.v.i self.doorx
pushi.e 0
pop.v.i self.floorno
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 165
cmp.i.v LT
bf [4]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 165
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 0
pop.v.i self.jup
pushi.e 0
pop.v.i self.a_timer

:[end]