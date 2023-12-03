.localvar 0 arguments
.localvar 1 __index 1054
.localvar 2 __alpha 1055

:[0]
pushbltn.v self.argument0
pop.v.v local.__index
pushbltn.v self.argument1
pop.v.v local.__alpha
pushloc.v local.__alpha
pushloc.v local.__index
call.i layer_tile_alpha(argc=2)
ret.v

:[end]