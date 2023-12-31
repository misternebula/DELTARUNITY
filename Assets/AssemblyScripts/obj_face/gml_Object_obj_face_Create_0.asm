.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.mouthmove
pushi.e 0
pop.v.i self.mouthtimer
pushi.e 0
pop.v.i self.face_index
pushi.e 0
pop.v.i self.image_speed
pushglb.v global.fc
pop.v.v self.nowface
pushi.e 2
pop.v.i self.facechange
pushi.e 1
pop.v.i self.rate
pushi.e 4
pop.v.i self.buffer
pushi.e 1
pop.v.i self.f
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.f

:[end]