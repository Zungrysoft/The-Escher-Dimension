#Damnation Station Interior
execute if predicate tid:random_30 if block ~ ~-1 ~ red_nether_bricks run function tid:custom_mobs/revenant
#Damnation Station Outskirts
execute if predicate tid:random_30 if block ~ ~-1 ~ warped_hyphae run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:brown_dye,Count:1}],HandDropChances:[2F]}

#The Moon Zone
execute if predicate tid:random_30 if block ~ ~-1 ~ granite run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:red_dye,Count:1}],HandDropChances:[2F]}
execute if block ~ ~-1 ~ polished_granite run function tid:custom_mobs/priest
execute if block ~ ~-1 ~ polished_granite run summon zombie ~ ~ ~0.1
execute if predicate tid:random_50 if block ~ ~-1 ~ polished_granite run summon zombie ~ ~ ~-0.1

#Mutant Sludge Pits
execute if block ~ ~-1 ~ prismarine_bricks run function tid:custom_mobs/scion
execute if predicate tid:random_30 if block ~ ~-1 ~ grass_block run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_30 if block ~ ~-1 ~ warped_wart_block run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[2F]}
