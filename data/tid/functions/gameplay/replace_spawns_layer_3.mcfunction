#Damnation Station Interior
execute if block ~ ~-1 ~ red_nether_bricks run function tid:custom_mobs/revenant
#Damnation Station Outskirts
execute if block ~ ~-1 ~ warped_hyphae run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:brown_dye,Count:1}],HandDropChances:[1.00F]}

#The Moon Zone
execute if block ~ ~-1 ~ end_stone if predicate tid:random_70 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:red_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ granite if predicate tid:random_70 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:red_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ polished_granite if predicate tid:random_70 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:red_dye,Count:1}],HandDropChances:[1.00F]}

#Mutant Sludge Pits
execute if block ~ ~-1 ~ prismarine_bricks if predicate tid:random_70 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ grass_block if predicate tid:random_70 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ warped_wart_block if predicate tid:random_70 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[1.00F]}
