#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide which ceiling design to use
execute if predicate tid:random_40 run setblock ~ ~ ~ blackstone

#Ruins
execute if block ~ ~ ~ air if blocks ~-1 ~-114 ~-1 ~9 ~-101 ~9 33 129 33 all run function tid:misc/sin_nexus_up
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins
execute if block ~ ~ ~ air if predicate tid:random_66 positioned ~4 ~ ~4 run function tid:misc/sin_nexus_ruins

#Hanging Gilded Blackstone
execute if block ~ ~ ~ blackstone run function tid:misc/sin_nexus_hanging

#Decide whether to put a staircase in the room
execute unless block ~4 ~-1 ~4 air run function tid:misc/sin_nexus_stairs
execute unless block ~4 ~-1 ~4 air if predicate tid:random_33 run function tid:misc/sin_nexus_lava

#Delete the random block
setblock ~ ~ ~ air