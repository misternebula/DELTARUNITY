.localvar 0 arguments

:[0]
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dtsprite
pop.v.v self.sprite_index

:[2]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.rtsprite
pop.v.v self.sprite_index

:[4]
push.v self.facing
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.utsprite
pop.v.v self.sprite_index

:[6]
push.v self.facing
pushi.e 3
cmp.i.v EQ
bf [end]

:[7]
push.v self.ltsprite
pop.v.v self.sprite_index

:[end]