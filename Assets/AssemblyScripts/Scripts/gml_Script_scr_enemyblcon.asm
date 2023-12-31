.localvar 0 arguments

:[0]
pushbltn.v self.argument2
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.mywriter
push.v self.mywriter
ret.v

:[2]
pushbltn.v self.argument2
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
push.v self.myblcon
ret.v

:[4]
pushbltn.v self.argument2
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 657
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.myblcon
ret.v

:[6]
pushbltn.v self.argument2
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 654
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.myblcon
ret.v

:[8]
pushbltn.v self.argument2
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 532
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[10]
pushbltn.v self.argument2
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 532
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[12]
pushbltn.v self.argument2
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 532
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[14]
pushbltn.v self.argument2
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 656
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.myblcon
ret.v

:[16]
pushbltn.v self.argument2
pushi.e 8
cmp.i.v EQ
bf [end]

:[17]
pushi.e 301
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.myblcon
pushi.e 655
push.v self.myblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.myblcon
ret.v

:[end]