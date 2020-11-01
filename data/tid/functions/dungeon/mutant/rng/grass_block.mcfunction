#Prismarine Bricks
execute if predicate tid:random_90 run setblock ~ ~ ~ prismarine_bricks

#Magma
execute if predicate tid:random_15 run setblock ~ ~ ~ magma_block

#Grass Plants
execute if block ~ ~ ~ grass_block positioned ~ ~1 ~ run function tid:dungeon/mutant/rng/plants