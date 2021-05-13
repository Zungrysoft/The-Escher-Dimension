#Transform
tp @s ~ -5 ~
function tid:custom_mobs/maggot

#Sound effect
playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ 1 1.4
playsound minecraft:entity.slime.squish hostile @a ~ ~ ~ 1 0.6
playsound minecraft:block.slime_block.step hostile @a ~ ~ ~ 1 0.6

#Particles
particle minecraft:crimson_spore ~ ~0.1 ~ 0.2 0.1 0.2 0 16
