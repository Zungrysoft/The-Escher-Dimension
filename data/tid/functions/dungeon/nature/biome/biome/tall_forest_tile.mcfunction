#Place water
fill ~ 50 ~ ~ 56 ~ water replace air

#Generate terrain
execute unless block ~ ~ ~ water run setblock ~ ~-1 ~ grass_block
fill ~ ~-1 ~ ~ ~-4 ~ dirt replace air
fill ~ ~-5 ~ ~ ~-22 ~ stone replace air
fill ~ ~-1 ~ ~ ~-4 ~ dirt replace water
fill ~ ~-5 ~ ~ ~-22 ~ stone replace water

#Maybe place foliage
execute if predicate tid:random_02 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ lily_of_the_valley
execute if predicate tid:random_20 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ grass
execute if predicate tid:random_15 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ fern
execute if predicate tid:random_07 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ large_fern[half=lower]
execute if block ~ ~ ~ large_fern run setblock ~ ~1 ~ large_fern[half=upper]

#Maybe place a tree
execute if predicate tid:random_10 if block ~ ~-1 ~ grass_block if blocks ~-1 ~2 ~-1 ~1 ~4 ~1 1033 1 1001 all run function tid:dungeon/nature/biome/feature/stack_tree

#Maybe place a bush
execute if predicate tid:random_04 if block ~ ~-1 ~ grass_block run function tid:dungeon/nature/biome/feature/oak_bush

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~-1 ~ grass_block if block ~ ~ ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
