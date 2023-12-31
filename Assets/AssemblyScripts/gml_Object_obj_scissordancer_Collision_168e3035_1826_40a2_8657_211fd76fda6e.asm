.localvar 0 arguments

:[0]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction

:[end]