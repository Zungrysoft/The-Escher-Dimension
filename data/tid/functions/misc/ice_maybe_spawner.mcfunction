#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a spawner
execute if predicate tid:random_20 run function tid:misc/ice_random_spawner
