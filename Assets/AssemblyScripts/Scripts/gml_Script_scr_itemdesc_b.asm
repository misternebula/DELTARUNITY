.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [6]

:[3]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [7]

:[4]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [8]

:[5]
b [9]

:[6]
push.s "---"@2273
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.itemdescb
b [9]

:[7]
push.s "scr_itemdesc_b_slash_scr_itemdesc_b_gml_11_0"@2335
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdescb
b [9]

:[8]
push.s "scr_itemdesc_b_slash_scr_itemdesc_b_gml_14_0"@2336
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdescb
b [9]

:[9]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]