#Set the block
execute if block ~ ~ ~ air run setblock ~ ~ ~ weeping_vines

#Recurse
execute if predicate tid:random_40 if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function tid:dungeon/nature/biome/feature/weeping_vines