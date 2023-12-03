.localvar 0 arguments
.localvar 1 __prop 1067
.localvar 2 __index 1068
.localvar 3 __val 1069
.localvar 4 __cam 1070

:[0]
pushbltn.v self.argument0
pop.v.v local.__prop
pushbltn.v self.argument1
pop.v.v local.__index
pushbltn.v self.argument2
pop.v.v local.__val
pushloc.v local.__prop
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [19]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [20]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [21]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [22]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [23]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [24]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [25]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [26]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [27]

:[9]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [28]

:[10]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [29]

:[11]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [30]

:[12]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [31]

:[13]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [32]

:[14]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [33]

:[15]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [34]

:[16]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [35]

:[17]
b [36]

:[18]
b [37]

:[19]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_y(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_pos(argc=3)
popz.v
b [37]

:[20]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_x(argc=1)
pushloc.v local.__cam
call.i camera_set_view_pos(argc=3)
popz.v
b [37]

:[21]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_height(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_size(argc=3)
popz.v
b [37]

:[22]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_width(argc=1)
pushloc.v local.__cam
call.i camera_set_view_size(argc=3)
popz.v
b [37]

:[23]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_angle(argc=2)
popz.v
b [37]

:[24]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_border_y(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_border(argc=3)
popz.v
b [37]

:[25]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_border_x(argc=1)
pushloc.v local.__cam
call.i camera_set_view_border(argc=3)
popz.v
b [37]

:[26]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_speed_y(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_speed(argc=3)
popz.v
b [37]

:[27]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_speed_x(argc=1)
pushloc.v local.__cam
call.i camera_set_view_speed(argc=3)
popz.v
b [37]

:[28]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_target(argc=2)
popz.v
b [37]

:[29]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_visible(argc=2)
pop.v.v self.__res
b [37]

:[30]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_xport(argc=2)
pop.v.v self.__res
b [37]

:[31]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_yport(argc=2)
pop.v.v self.__res
b [37]

:[32]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_wport(argc=2)
pop.v.v self.__res
b [37]

:[33]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_hport(argc=2)
pop.v.v self.__res
b [37]

:[34]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_camera(argc=2)
pop.v.v self.__res
b [37]

:[35]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_surface_id(argc=2)
pop.v.v self.__res
b [37]

:[36]
b [37]

:[37]
popz.v
pushi.e 0
conv.i.v
ret.v

:[end]