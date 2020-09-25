#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to place a spawner
execute if predicate tid:random_33 run function tid:misc/neon_random_spawner