.localvar 0 arguments

:[0]
push.v self.shadow
conv.v.i
pushenv [9]

:[1]
push.v 326.x
pop.v.v self.x
push.v 326.sprite_index
pop.v.v self.sprite_index
push.v 326.image_index
pop.v.v self.image_index
pushi.e 192
push.v 326.y
sub.v.i
pop.v.v self.y
push.v 326.sprite_index
pushi.e 837
cmp.i.v EQ
bf [3]

:[2]
pushi.e 839
pop.v.i self.sprite_index

:[3]
push.v 326.sprite_index
pushi.e 839
cmp.i.v EQ
bf [5]

:[4]
pushi.e 837
pop.v.i self.sprite_index

:[5]
push.v 326.sprite_index
pushi.e 836
cmp.i.v EQ
bf [7]

:[6]
pushi.e 836
pop.v.i self.sprite_index

:[7]
push.v 326.sprite_index
pushi.e 834
cmp.i.v EQ
bf [9]

:[8]
pushi.e 834
pop.v.i self.sprite_index

:[9]
popenv [1]

:[end]