#Sounds
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ .6 2

#Particles
execute if score @s cycle_short matches 0 run particle minecraft:happy_villager ~ ~1 ~ .6 1 .6 5 13
