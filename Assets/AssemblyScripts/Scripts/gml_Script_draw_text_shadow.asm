.localvar 0 arguments

:[0]
call.i draw_get_color(argc=0)
pop.v.v self.__txtcolor__
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.argument2
call.i string_hash_to_newline(argc=1)
pushbltn.v self.argument1
pushi.e 1
add.i.v
pushbltn.v self.argument0
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.__txtcolor__
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.argument2
call.i string_hash_to_newline(argc=1)
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i draw_text(argc=3)
popz.v

:[end]