#Generate terrain
fill ~ ~ ~ ~ ~-3 ~ sand replace air
fill ~ ~-4 ~ ~ ~-6 ~ sandstone replace air
fill ~ ~-7 ~ ~ ~-22 ~ stone replace air

#Maybe place shrubs and cacti
execute if predicate tid:random_01 run setblock ~ ~1 ~ dead_bush
execute if predicate tid:random_005 run setblock ~ ~1 ~ cactus
execute if predicate tid:random_50 if block ~ ~1 ~ cactus run setblock ~ ~2 ~ cactus
