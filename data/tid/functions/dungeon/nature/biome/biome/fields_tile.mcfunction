#Generate terrain
setblock ~ ~ ~ grass_block
fill ~ ~-1 ~ ~ ~-3 ~ dirt replace air
fill ~ ~-4 ~ ~ ~-22 ~ stone replace air

#Maybe place grass
execute if predicate tid:random_25 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ grass

#Bushes
execute if predicate tid:random_01 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ rose_bush[half=lower]
execute if block ~ ~1 ~ rose_bush run setblock ~ ~2 ~ rose_bush[half=upper]

execute if predicate tid:random_005 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ lilac[half=lower]
execute if block ~ ~1 ~ lilac run setblock ~ ~2 ~ lilac[half=upper]

#Maybe place a tree
execute if predicate tid:random_02 if block ~ ~ ~ grass_block positioned ~ ~1 ~ if blocks ~-2 ~2 ~-2 ~2 ~4 ~2 1033 1 1001 all run function tid:dungeon/nature/biome/feature/field_tree

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~ ~ grass_block if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
