.localvar 0 arguments

:[0]
push.v self.press_timer
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
push.v self.d_index
pop.v.v self.image_index
b [3]

:[2]
push.v self.d_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[3]
push.v self.press_timer
pushi.e 1
sub.i.v
pop.v.v self.press_timer

:[end]