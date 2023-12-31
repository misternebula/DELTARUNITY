.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.playtextsound
call.i button2_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.playtextsound

:[2]
push.v self.skippable
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.playtextsound

:[4]
push.v self.playtextsound
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.rate
pushi.e 2
cmp.i.v LTE
bf [7]

:[6]
push.v self.pos
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
b [8]

:[7]
push.v self.pos
pushi.e 1
sub.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar

:[8]
pushi.e 1
pop.v.i self.play
pushi.e 0
pop.v.i self.playcheck
push.v self.getchar
push.s "&"@1540
cmp.s.v EQ
bf [12]

:[9]
push.v self.rate
pushi.e 3
cmp.i.v LT
bf [11]

:[10]
pushi.e 1
pop.v.i self.playcheck
push.v self.pos
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
b [12]

:[11]
pushi.e 0
pop.v.i self.play

:[12]
push.v self.getchar
push.s " "@24
cmp.s.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.play

:[14]
push.v self.getchar
push.s "^"@1541
cmp.s.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.play

:[16]
push.v self.getchar
push.s "!"@1542
cmp.s.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.play

:[18]
push.v self.getchar
push.s "."@1543
cmp.s.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.play

:[20]
push.v self.getchar
push.s "?"@1544
cmp.s.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.play

:[22]
push.v self.getchar
push.s ","@1545
cmp.s.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.play

:[24]
push.v self.getchar
push.s ":"@1546
cmp.s.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i self.play

:[26]
push.v self.getchar
push.s "/"@357
cmp.s.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i self.play

:[28]
push.v self.getchar
push.s "\\"@1547
cmp.s.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.play

:[30]
push.v self.getchar
push.s "|"@1548
cmp.s.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.play

:[32]
push.v self.getchar
push.s "*"@1549
cmp.s.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i self.play

:[34]
push.v self.play
pushi.e 1
cmp.i.v EQ
bf [end]

:[35]
push.v self.textsound
call.i snd_play(argc=1)
popz.v
pushi.e 3
pushenv [37]

:[36]
pushi.e 1
pop.v.i self.mouthmove

:[37]
popenv [36]

:[end]