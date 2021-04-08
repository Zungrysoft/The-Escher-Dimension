#Generate terrain
setblock ~ ~ ~ grass_block
fill ~ ~-1 ~ ~ ~-3 ~ dirt replace air
fill ~ ~-4 ~ ~ ~-22 ~ stone replace air

#Maybe place grass
execute if predicate tid:random_25 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ grass
execute if predicate tid:random_20 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ fern

#Maybe place a tree
execute if predicate tid:random_10 if block ~ ~ ~ grass_block positioned ~ ~1 ~ if blocks ~-1 ~2 ~-1 ~1 ~4 ~1 1033 1 1001 all if block ~ ~8 ~ air run function tid:dungeon/nature/biome/feature/jungle_tree

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~ ~ grass_block if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
