#Generate terrain
fill ~ ~ ~ ~ ~-3 ~ red_concrete_powder replace air
fill ~ ~-4 ~ ~ ~-6 ~ red_concrete replace air
fill ~ ~-7 ~ ~ ~-22 ~ stone replace air

#Maybe place shrubs and cacti
execute if score height value matches 551.. if predicate tid:random_02 positioned ~ ~1 ~ run function tid:dungeon/nature/biome/feature/acacia_bush

#Maybe place a tree
execute if predicate tid:random_003 if score height value matches 551.. if block ~ ~1 ~ air positioned ~ ~1 ~ if blocks ~-2 ~2 ~-2 ~2 ~4 ~2 1033 1 1001 all run function tid:dungeon/nature/biome/feature/flat_tree

#Water trees
execute if predicate tid:random_002 if block ~ ~1 ~ air positioned ~ ~1 ~ if blocks ~-2 ~2 ~-2 ~2 ~4 ~2 1033 1 1001 all run function tid:dungeon/nature/biome/feature/flat_tree

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~ ~ red_concrete_powder if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
