#Generate terrain
setblock ~ ~ ~ crimson_nylium
fill ~ ~-1 ~ ~ ~-22 ~ netherrack replace air

#Add the pits
execute if block ~ 56 ~ crimson_nylium run fill ~ 52 ~ ~ 50 ~ magma_block
execute if block ~ 56 ~ crimson_nylium run fill ~ 55 ~ ~ 53 ~ air
execute if block ~ 56 ~ air run fill ~ ~-4 ~ ~ 50 ~ magma_block
execute if block ~ 56 ~ air run fill ~ ~ ~ ~ ~-3 ~ air

#Maybe place foliage
execute if predicate tid:random_20 if block ~ ~ ~ crimson_nylium run setblock ~ ~1 ~ crimson_roots
execute if predicate tid:random_02 if block ~ ~ ~ crimson_nylium run setblock ~ ~1 ~ crimson_fungus

#Maybe place a tree
execute if predicate tid:random_10 if block ~ ~ ~ crimson_nylium if block ~-1 ~ ~ crimson_nylium if block ~ ~ ~-1 crimson_nylium if block ~-1 ~ ~-1 crimson_nylium positioned ~ ~1 ~ if blocks ~-2 ~2 ~-2 ~ ~4 ~ 1033 1 1001 all run function tid:dungeon/nature/biome/feature/crimson_tree
