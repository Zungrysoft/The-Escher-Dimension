#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide whether to place the spawner
execute if predicate tid:random_30 run function tid:misc/moon_random_spawner
