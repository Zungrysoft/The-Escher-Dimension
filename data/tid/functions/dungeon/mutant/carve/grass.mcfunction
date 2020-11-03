execute if block ~ ~ ~ dirt if block ~ ~1 ~ air run setblock ~ ~ ~ grass_block

execute if block ~ ~ ~ grass_block if predicate tid:random_50 positioned ~ ~1 ~ run function tid:dungeon/mutant/rng/plants

execute unless block ~ ~ ~ stone unless block ~ ~ ~ grass_block positioned ~ ~-1 ~ run function tid:dungeon/mutant/carve/grass