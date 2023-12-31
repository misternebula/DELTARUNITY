.localvar 0 arguments

:[0]
push.v 326.battlemode
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.battlealpha
push.d 0.8
cmp.d.v LT
bf [3]

:[2]
push.v self.battlealpha
push.d 0.04
add.d.v
pop.v.v self.battlealpha

:[3]
b [6]

:[4]
push.v self.battlealpha
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.battlealpha
push.d 0.04
sub.d.v
pop.v.v self.battlealpha

:[6]
push.v self.battlealpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 740
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 165
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[7]
push.v self.battlealpha
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v 165.image_blend
push.v self.battlealpha
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
push.i 16777215
pop.v.i 165.image_blend

:[9]
push.v self.whitecon
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e 326
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.battlemode

:[12]
popenv [11]
push.v self.whitetimer
pushi.e 1
add.i.v
pop.v.v self.whitetimer
push.v self.whitetimer
pushi.e 15
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 740
add.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[13]
push.v self.whitecon
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
push.v self.whitetimer
pushi.e 1
sub.i.v
pop.v.v self.whitetimer
push.v self.whitetimer
pushi.e 15
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 740
add.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.whitetimer
pushi.e 0
cmp.i.v LTE
bf [end]

:[15]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.whitecon
pushi.e 0
pop.v.i self.whitetimer

:[end]