.localvar 0 arguments

:[0]
push.v global.tension
pushbltn.v self.argument0
add.v.v
pop.v.v global.tension
pushglb.v global.tension
pushglb.v global.maxtension
cmp.v.v GT
bf [end]

:[1]
pushglb.v global.maxtension
pop.v.v global.tension

:[end]