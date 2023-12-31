.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.__returnvalue
pushbltn.v self.argument1
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
conv.i.v
pushbltn.v self.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
neg.v
cmp.v.v LTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.__returnvalue

:[3]
pushbltn.v self.argument1
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e 0
conv.i.v
pushbltn.v self.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
cmp.v.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.__returnvalue

:[6]
pushbltn.v self.argument1
pushi.e 2
cmp.i.v EQ
bf [9]

:[7]
pushi.e 1
conv.i.v
pushbltn.v self.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
cmp.v.v GTE
bf [9]

:[8]
pushi.e 1
pop.v.i self.__returnvalue

:[9]
pushbltn.v self.argument1
pushi.e 3
cmp.i.v EQ
bf [12]

:[10]
pushi.e 0
conv.i.v
pushbltn.v self.argument0
call.i gamepad_axis_value(argc=2)
push.v self.axis_value
neg.v
cmp.v.v LTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.__returnvalue

:[12]
push.v self.__returnvalue
ret.v

:[end]