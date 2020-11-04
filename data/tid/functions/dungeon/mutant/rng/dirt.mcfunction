#Grass
execute if block ~ ~1 ~ air run setblock ~ ~ ~ grass_block

#Magma
execute if block ~ ~ ~ grass_block if predicate tid:random_04 run setblock ~ ~ ~ magma_block
execute if predicate tid:random_01 run setblock ~ ~ ~ magma_block

#Grass Plants
execute if block ~ ~ ~ grass_block if predicate tid:random_50 positioned ~ ~1 ~ run function tid:dungeon/mutant/rng/plants