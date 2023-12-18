.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [14]

:[1]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[2]
push.v self.egcon
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.egcon

:[4]
push.v self.egcon
pushi.e 2
cmp.i.v EQ
bf [7]

:[5]
push.v self.egtimer
pushi.e 1
add.i.v
pop.v.v self.egtimer
pushi.e 146
pop.v.i self.sprite_index
push.v self.egtimer
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.image_index
push.v self.egtimer
pushi.e 60
cmp.i.v GTE
bf [7]

:[6]
pushi.e 143
pop.v.i self.sprite_index
pushi.e 147
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 29
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.egg
push.v self.depth
push.v self.egg
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 3
pop.v.i self.egcon

:[7]
push.v self.egcon
pushi.e 3
cmp.i.v EQ
bt [9]

:[8]
push.v self.egcon
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [14]

:[11]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 326
pushenv [13]

:[12]
pushi.e 5
pop.v.i self.onebuffer

:[13]
popenv [12]

:[14]
push.v self.egcon
pushi.e 2
cmp.i.v NEQ
bf [end]

:[15]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.dfacing
pop.v.v self.facing
pushi.e 0
pop.v.i self.image_speed

:[17]
call.i scr_npcdir(argc=0)
popz.v

:[end]