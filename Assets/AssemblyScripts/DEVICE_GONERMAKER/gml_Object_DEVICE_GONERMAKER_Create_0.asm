.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.HEAD
pushi.e 0
pop.v.i self.BODY
pushi.e 0
pop.v.i self.LEGS
pushi.e 7
pop.v.i self.HEADMAX
pushi.e 5
pop.v.i self.BODYMAX
pushi.e 1
pop.v.i self.LEGSMAX
pushi.e -5
pushi.e 900
push.v [array]global.flag
pushi.e -1
pushi.e 0
pop.v.v [array]self.PART
pushi.e -5
pushi.e 901
push.v [array]global.flag
pushi.e -1
pushi.e 1
pop.v.v [array]self.PART
pushi.e -5
pushi.e 902
push.v [array]global.flag
pushi.e -1
pushi.e 2
pop.v.v [array]self.PART
pushi.e 7
pushi.e -1
pushi.e 0
pop.v.i [array]self.PARTMAX
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.PARTMAX
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.PARTMAX
pushi.e 0
pop.v.i self.s
pushi.e 0
pop.v.i self.offx
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.PARTX
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.IDEALX
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.PARTX
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.IDEALX
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.PARTX
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.IDEALX
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PART
pushi.e -50
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.IDEALX
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PARTX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.LOCK
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.LOCK
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.LOCK
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.sy
pushi.e 34
pushi.e -1
pushi.e 1
pop.v.i [array]self.sy
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.sy
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.obacktimer
pushi.e 0
pop.v.i self.OB_DEPTH
pushi.e 0
pop.v.i self.flashtimer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.midscreenx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.midscreeny
pushi.e 1
pop.v.i self.STEP
pushi.e 0
pop.v.i self.FINISH
pushi.e 10
pop.v.i self.ONEBUFFER
pushi.e 10
pop.v.i self.FADEBUFFER
pushi.e 0
pop.v.i self.CANCEL
push.v self.x
pop.v.v self.initx
push.v self.y
pop.v.v self.inity
pushi.e 0
pop.v.i self.NAMEFADE

:[end]