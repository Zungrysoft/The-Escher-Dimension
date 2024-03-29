#Zorethab's Tomb
execute if block ~ ~-1 ~ #tid:red_sandstone_blocks run function tid:gameplay/replace_spawns_sand2

#Soul Sand Arenas
execute if predicate tid:random_50 if block ~ ~-1 ~ soul_soil run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:cyan_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_50 if block ~ ~-1 ~ soul_soil run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blackstone,Count:1}],HandDropChances:[2F]}

#Lightless Gardens
execute if predicate tid:random_25 if block ~ ~-1 ~ oak_planks run summon minecraft:zombie ~0.1 ~ ~ {HandItems:[{id:lime_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_60 if block ~ ~-1 ~ oak_planks run function tid:custom_mobs/farie_summoner
execute if predicate tid:random_30 if block ~ ~-1 ~ oak_planks positioned ~ ~-1 ~0.1 run function tid:custom_mobs/flower_zombie

#Fusion Central
execute if predicate tid:random_50 if block ~ ~-1 ~ dark_prismarine run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:purple_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_50 if block ~ ~-1 ~ dark_prismarine run summon minecraft:zombie ~ ~ ~0.1 {HandItems:[{id:end_stone,Count:1}],HandDropChances:[2F]}

# Obsidian
execute if block ~ ~-1 ~ obsidian run function tid:custom_mobs/obsidian_elemental
execute if predicate tid:random_50 if block ~ ~-1 ~7 obsidian positioned ~ ~ ~7 run function tid:custom_mobs/obsidian_elemental
execute if predicate tid:random_50 if block ~7 ~-1 ~ obsidian positioned ~7 ~ ~ run function tid:custom_mobs/obsidian_elemental
