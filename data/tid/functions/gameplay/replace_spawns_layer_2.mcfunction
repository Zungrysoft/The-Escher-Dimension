#Zorethab's Tomb
execute if block ~ ~-1 ~ #tid:red_sandstone_blocks run function tid:gameplay/replace_spawns_sand2

#Soul Sand Arenas
execute if predicate tid:random_50 if block ~ ~-1 ~ soul_soil run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:cyan_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_50 if block ~ ~-1 ~ soul_soil run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blackstone,Count:1}],HandDropChances:[2F]}

#Lightless Gardens
execute if predicate tid:random_50 if block ~ ~-1 ~ oak_planks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:lime_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_70 if block ~ ~-1 ~ oak_planks run function tid:custom_mobs/farie_summoner
execute if block ~ ~-1 ~0.1 oak_planks run function tid:custom_mobs/flower_zombie

#Fusion Central
execute if predicate tid:random_50 if block ~ ~-1 ~ dark_prismarine run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:purple_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_50 if block ~ ~-1 ~0.1 dark_prismarine run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:end_stone,Count:1}],HandDropChances:[2F]}
