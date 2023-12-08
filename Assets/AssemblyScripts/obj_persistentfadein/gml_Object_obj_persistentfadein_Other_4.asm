.localvar 0 arguments

:[0]
pushi.e 10
pushbltn.v self.room_width
pushi.e 4
conv.i.d
div.d.v
add.v.i
pop.v.v self.length
pushi.e 10
pushbltn.v self.room_height
pushi.e 4
conv.i.d
div.d.v
add.v.i
pop.v.v self.height

:[end]