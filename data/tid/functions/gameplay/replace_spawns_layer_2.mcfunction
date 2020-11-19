#Zorethab's Tomb
execute if block ~ ~-1 ~ #tid:red_sandstone_blocks run function tid:gameplay/replace_spawns_sand2

#Soul Sand Arenas
execute if predicate tid:random_50 if block ~ ~-1 ~ soul_soil run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:cyan_dye,Count:1}],HandDropChances:[1.00F]}

#Lightless Gardens
execute if predicate tid:random_50 if block ~ ~-1 ~ smooth_stone_slab run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:lime_dye,Count:1}],HandDropChances:[1.00F]}
execute if predicate tid:random_50 if block ~ ~-1 ~ oak_planks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:lime_dye,Count:1}],HandDropChances:[1.00F]}

#Fusion Central
execute if predicate tid:random_50 if block ~ ~-1 ~ dark_prismarine run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:purple_dye,Count:1}],HandDropChances:[1.00F]}
