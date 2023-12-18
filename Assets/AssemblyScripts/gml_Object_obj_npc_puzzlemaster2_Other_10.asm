.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 230
pop.v.i global.msc

:[4]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 235
pop.v.i global.msc

:[6]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 240
pop.v.i global.msc

:[8]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 245
pop.v.i global.msc

:[10]
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 3
pop.v.i self.myinteract
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 0
push.v self.mydialoguer
conv.v.i
pop.v.i [stacktop]self.side
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]