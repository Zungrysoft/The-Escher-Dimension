#Set the block
setblock ~ ~ ~ chain
setblock ~ ~1 ~ andesite_wall

execute if predicate tid:random_70 if block ~ ~2 ~ air positioned ~ ~1 ~ run function tid:dungeon/nature/biome/feature/mysterious_chain_recurse