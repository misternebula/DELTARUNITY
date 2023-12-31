.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.coord
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
call.i button1_p(argc=0)
conv.v.b
bf [6]

:[5]
pushi.e 99
pop.v.i self.coord
pushi.e 1
pop.v.i self.endme

:[6]
push.v self.coord
pushi.e 2
cmp.i.v LT
bf [14]

:[7]
call.i left_p(argc=0)
conv.v.b
bt [9]

:[8]
call.i right_p(argc=0)
conv.v.b
b [10]

:[9]
push.e 1

:[10]
bf [14]

:[11]
push.v self.coord
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.coord
b [14]

:[13]
pushi.e 1
pop.v.i self.coord

:[14]
push.v self.coord
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [25]

:[18]
call.i button1_p(argc=0)
conv.v.b
bf [25]

:[19]
pushi.e 147
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 2
pop.v.i self.coord
pushi.e 3
pop.v.i self.buffer
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.truename
pop.v.v self.name
pushglb.v global.llv
pop.v.v self.love

:[21]
pushbltn.v self.room
call.i scr_roomname(argc=1)
popz.v
pushglb.v global.lv
pop.v.v self.level
pushglb.v global.time
pop.v.v self.time
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [23]

:[22]
pushi.e 59
pop.v.i self.seconds

:[23]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [25]

:[24]
push.s "0"@2521
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[25]
call.i button1_p(argc=0)
conv.v.b
bf [28]

:[26]
push.v self.coord
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 1
pop.v.i self.endme

:[31]
call.i button2_p(argc=0)
conv.v.b
bf [33]

:[32]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 1
pop.v.i self.endme

:[36]
push.v self.endme
pushi.e 1
cmp.i.v EQ
bf [end]

:[37]
pushi.e 0
pop.v.i global.interact
pushi.e 326
pushenv [39]

:[38]
pushi.e 3
pop.v.i self.onebuffer

:[39]
popenv [38]
call.i instance_destroy(argc=0)
popz.v

:[end]