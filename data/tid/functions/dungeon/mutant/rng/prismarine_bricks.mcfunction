#Grass Block
execute if predicate tid:random_10 if block ~ ~1 ~ air run setblock ~ ~ ~ grass_block

#Magma
execute if predicate tid:random_05 run setblock ~ ~ ~ magma_block

#Grass Plants
execute if block ~ ~ ~ grass_block if predicate tid:random_80 positioned ~ ~1 ~ run function tid:dungeon/mutant/rng/plants