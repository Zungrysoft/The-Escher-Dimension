#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to build the dirt pile
execute if predicate tid:random_50 run function tid:misc/infernal_dirt_pile
