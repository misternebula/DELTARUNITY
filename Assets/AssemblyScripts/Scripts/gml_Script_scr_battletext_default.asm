.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
call.i scr_battletext(argc=0)
popz.v
push.v self.battlewriter
ret.v

:[end]