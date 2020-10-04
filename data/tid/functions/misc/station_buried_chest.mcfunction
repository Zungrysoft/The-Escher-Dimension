#Delete the command block
fill ~ ~1 ~ ~ ~ ~ red_nether_bricks

#Decide whether to put in a chest
execute if predicate tid:random_07 run function tid:misc/station_buried_chest_generate