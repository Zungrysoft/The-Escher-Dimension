#Set fire
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:fire
data modify entity @s Fire set value 120

#Sound effect
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.8
playsound minecraft:block.ancient_debris.break player @a ~ ~ ~ 0.5 1.4

#Particles
particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0 15
