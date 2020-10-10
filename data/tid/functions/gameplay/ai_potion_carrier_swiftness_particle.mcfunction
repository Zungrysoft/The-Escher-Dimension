#Recursively trace a particle forward
particle minecraft:dust .5 .8 1 1.2
execute unless entity @s[distance=0..2] unless entity @s[distance=20..] positioned ^ ^ ^.4 run function tid:gameplay/ai_potion_carrier_swiftness_particle
