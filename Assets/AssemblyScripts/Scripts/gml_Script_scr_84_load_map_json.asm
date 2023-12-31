.localvar 0 arguments
.localvar 1 filename 1123
.localvar 2 file 1124
.localvar 3 json 1125

:[0]
pushbltn.v self.argument0
pop.v.v local.filename
pushloc.v local.filename
call.i file_text_open_read(argc=1)
pop.v.v local.file
push.s ""@2240
pop.v.s local.json

:[1]
pushloc.v local.file
call.i file_text_eof(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v local.json
pushloc.v local.file
call.i file_text_readln(argc=1)
add.v.v
pop.v.v local.json
b [1]

:[3]
pushloc.v local.file
call.i file_text_close(argc=1)
popz.v
pushloc.v local.json
call.i json_decode(argc=1)
ret.v

:[end]