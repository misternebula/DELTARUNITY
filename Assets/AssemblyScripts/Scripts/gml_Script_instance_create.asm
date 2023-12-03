.localvar 0 arguments
.localvar 1 myDepth 1017

:[0]
pushbltn.v self.argument2
call.i object_get_depth(argc=1)
pop.v.v local.myDepth
pushbltn.v self.argument2
pushloc.v local.myDepth
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create_depth(argc=4)
ret.v

:[end]