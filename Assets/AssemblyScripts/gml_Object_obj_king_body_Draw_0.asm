.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.attackno
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 240.x
call.i string_hash_to_newline(argc=1)
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v 240.y
call.i string_hash_to_newline(argc=1)
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]