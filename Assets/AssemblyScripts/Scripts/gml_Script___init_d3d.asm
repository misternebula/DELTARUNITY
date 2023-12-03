.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.__d3d
pushi.e 0
pop.v.i global.__d3dDepth
call.i camera_create(argc=0)
pop.v.v global.__d3dCamera
pushi.e -1
pop.v.i global.__d3dPrimKind
pushi.e -1
pop.v.i global.__d3dPrimTex
call.i vertex_create_buffer(argc=0)
pop.v.v global.__d3dPrimBuffer
call.i vertex_format_begin(argc=0)
popz.v
call.i vertex_format_add_position_3d(argc=0)
popz.v
call.i vertex_format_add_normal(argc=0)
popz.v
call.i vertex_format_add_colour(argc=0)
popz.v
call.i vertex_format_add_textcoord(argc=0)
popz.v
call.i vertex_format_end(argc=0)
pop.v.v global.__d3dPrimVF
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__d3dDeprecatedMessage

:[end]