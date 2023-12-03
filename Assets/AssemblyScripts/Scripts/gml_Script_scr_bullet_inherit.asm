.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.damage
pushbltn.v self.argument0
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.grazepoints
pushbltn.v self.argument0
conv.v.i
pop.v.v [stacktop]self.grazepoints
push.v self.timepoints
pushbltn.v self.argument0
conv.v.i
pop.v.v [stacktop]self.timepoints
push.v self.inv
pushbltn.v self.argument0
conv.v.i
pop.v.v [stacktop]self.inv
push.v self.target
pushbltn.v self.argument0
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 0
pushbltn.v self.argument0
conv.v.i
pop.v.i [stacktop]self.grazed
pushi.e 0
pushbltn.v self.argument0
conv.v.i
pop.v.i [stacktop]self.grazetimer

:[end]