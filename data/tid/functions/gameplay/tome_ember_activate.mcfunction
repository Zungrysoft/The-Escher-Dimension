#Take the item
execute unless entity @s[gamemode=creative] run clear @s fire_charge 3

#Place the fire
fill ~-3 ~-2 ~-3 ~3 ~2 ~3 fire replace air

#Particles
particle minecraft:flame ~ ~ ~ 2 1 2 0 100

#Play a sound
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 1.01
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 1
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 0.99
