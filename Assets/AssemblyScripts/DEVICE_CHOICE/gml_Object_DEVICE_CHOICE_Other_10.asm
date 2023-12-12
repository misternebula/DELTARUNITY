.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.TYPE
push.s "other 10 type 3"@9523
conv.s.v
call.i show_debug_message(argc=1)
popz.v
call.i scr_84_name_input_setup(argc=0)
popz.v

:[end]