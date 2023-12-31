.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v

:[end]