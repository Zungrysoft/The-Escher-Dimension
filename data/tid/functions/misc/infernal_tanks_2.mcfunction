#Delete the command block
fill ~ ~1 ~ ~ ~ ~ andesite

#Decide whether to generate a chest
execute if predicate tid:random_002 positioned ~ ~ ~1 run function tid:misc/infernal_tanks_2_chest
execute if predicate tid:random_002 positioned ~1 ~ ~3 run function tid:misc/infernal_tanks_2_chest
execute if predicate tid:random_002 positioned ~ ~ ~4 run function tid:misc/infernal_tanks_2_chest
execute if predicate tid:random_002 positioned ~5 ~ ~1 run function tid:misc/infernal_tanks_2_chest
execute if predicate tid:random_002 positioned ~6 ~ ~4 run function tid:misc/infernal_tanks_2_chest
execute if predicate tid:random_002 positioned ~5 ~ ~4 run function tid:misc/infernal_tanks_2_chest
