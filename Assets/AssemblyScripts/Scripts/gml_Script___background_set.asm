.localvar 0 arguments
.localvar 1 __prop 906
.localvar 2 __bind 907
.localvar 3 __val 908
.localvar 4 __backinfo 909
.localvar 5 __res 910

:[0]
pushbltn.v self.argument0
pop.v.v local.__prop
pushbltn.v self.argument1
pop.v.v local.__bind
pushbltn.v self.argument2
pop.v.v local.__val
pushloc.v local.__bind
call.i __background_get_element(argc=1)
pop.v.v local.__backinfo
pushloc.v local.__backinfo
pushloc.v local.__val
pushloc.v local.__bind
pushloc.v local.__prop
call.i __background_set_internal(argc=4)
popz.v
pushloc.v local.__backinfo
pushloc.v local.__bind
pushloc.v local.__prop
call.i __background_get_internal(argc=3)
pop.v.v local.__res
pushloc.v local.__res
ret.v

:[end]