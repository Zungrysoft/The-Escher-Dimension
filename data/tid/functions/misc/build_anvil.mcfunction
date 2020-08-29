#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ stone_bricks

#Decide whether to generate an anvil
execute if predicate tid:random_60 run setblock ~-6 ~ ~-4 grindstone
execute if predicate tid:random_10 run setblock ~-6 ~ ~-4 anvil
execute if predicate tid:random_15 run setblock ~ ~ ~-2 anvil