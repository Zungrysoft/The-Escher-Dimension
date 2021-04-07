#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Decide whether to place a spawner
execute if predicate tid:random_60 run function tid:misc/brick_random_spawner
