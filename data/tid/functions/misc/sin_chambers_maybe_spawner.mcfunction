#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide whether to build spawner
execute if predicate tid:random_20 run function tid:misc/sin_chambers_random_spawner
