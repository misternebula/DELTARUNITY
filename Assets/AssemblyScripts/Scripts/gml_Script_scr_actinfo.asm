.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.actcost
pushi.e 0
pop.v.i self.acttype
pushi.e 0
pop.v.i self.actspell
pushi.e 1
pop.v.i self.actor
push.s " "@24
pop.v.s self.actname
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [4]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [5]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [6]

:[3]
b [7]

:[4]
pushi.e -1
pop.v.i self.actcost
pushi.e 0
pop.v.i self.acttype
pushi.e 0
pop.v.i self.actspell
pushi.e 1
pop.v.i self.actor
push.s " "@24
pop.v.s self.actname
b [7]

:[5]
pushi.e -1
pop.v.i self.actcost
pushi.e 0
pop.v.i self.acttype
pushi.e 0
pop.v.i self.actspell
pushi.e 1
pop.v.i self.actor
push.s "scr_actinfo_slash_scr_actinfo_gml_21_0"@1922
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.actname
b [7]

:[6]
pushi.e -1
pop.v.i self.actcost
pushi.e 1
pop.v.i self.acttype
pushi.e 2
pop.v.i self.actspell
pushi.e 2
pop.v.i self.actor
push.s "scr_actinfo_slash_scr_actinfo_gml_28_0"@1923
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.actname
b [7]

:[7]
popz.v

:[end]