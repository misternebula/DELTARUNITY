.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.TIMER
pushi.e 0
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 0
pop.v.i self.OBMADE
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_FAILURE_slash_Create_0_gml_10_0"@9699
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 0
pop.v.i self.FADEFACTOR
pushi.e 0
pop.v.i self.WHITEFADE
pushi.e 0
pop.v.i self.FADEUP
pushi.e 0
pop.v.i self.DARK_WAIT

:[end]