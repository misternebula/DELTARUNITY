.localvar 0 arguments

:[0]
push.v self.darken
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
pushi.e 205
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.darkify

:[3]
popenv [2]
push.v self.darkamt
pushi.e 15
cmp.i.v LT
bf [5]

:[4]
push.v self.darkamt
pushi.e 1
add.i.v
pop.v.v self.darkamt

:[5]
pushi.e 213
pushenv [7]

:[6]
push.v 195.darkamt
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.image_alpha

:[7]
popenv [6]

:[8]
push.v self.darken
pushi.e 0
cmp.i.v EQ
bf [19]

:[9]
pushi.e 303
pushenv [11]

:[10]
pushi.e 3
pop.v.i self.growcon

:[11]
popenv [10]
pushi.e 205
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.darkify

:[13]
popenv [12]
push.v self.darkamt
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.darkamt
pushi.e 1
sub.i.v
pop.v.v self.darkamt

:[15]
pushi.e 213
pushenv [17]

:[16]
push.v 195.darkamt
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.image_alpha

:[17]
popenv [16]
push.v self.darkamt
pushi.e 0
cmp.i.v LTE
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
push.v self.darkamt
pushi.e 20
conv.i.d
div.d.v
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
pushi.e 520
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 680
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]