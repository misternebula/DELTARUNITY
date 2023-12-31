.localvar 0 arguments
.localvar 1 __prop 1062
.localvar 2 __index 1063
.localvar 3 __val 1064
.localvar 4 __res 1065

:[0]
pushbltn.v self.argument0
pop.v.v local.__prop
pushbltn.v self.argument1
pop.v.v local.__index
pushbltn.v self.argument2
pop.v.v local.__val
pushloc.v local.__val
pushloc.v local.__index
pushloc.v local.__prop
call.i __view_set_internal(argc=3)
popz.v
pushloc.v local.__index
pushloc.v local.__prop
call.i __view_get(argc=2)
pop.v.v local.__res
pushloc.v local.__res
ret.v

:[end]