#Stronghold
execute if block ~ ~-1 ~ stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:orange_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ cracked_stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:quartz,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ mossy_stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:quartz,Count:1}],HandDropChances:[1.00F]}

#Boomstick Basement
execute if block ~ ~-1 ~ bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:magenta_dye,Count:1}],HandDropChances:[1.00F]}

#Nature
execute if block ~ ~-1 ~ oak_planks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:light_blue_dye,Count:1}],HandDropChances:[1.00F]}

#Kill the source mob
tp @s 1 -100 1