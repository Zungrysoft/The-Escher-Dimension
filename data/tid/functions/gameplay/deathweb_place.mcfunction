#Build the web
setblock ~ ~ ~ cobweb destroy

#Sound effects
playsound minecraft:block.grass.place hostile @a
playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a ~ ~ ~ .3 0.7

#Particles
execute align xyz run particle minecraft:block cobweb ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0 20
