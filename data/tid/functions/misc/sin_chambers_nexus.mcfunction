#Decide which ceiling design to use
scoreboard players set temp4 value 0
execute if predicate tid:random_40 run scoreboard players set temp4 value 1
execute if predicate tid:random_33 run scoreboard players set temp4 value 2

#Ruins
execute if score temp4 value matches 0 positioned ~ ~16 ~ if blocks ~ ~-128 ~ ~6 ~-119 ~6 1033 1 1033 all run function tid:misc/sin_chambers_nexus_up
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins
execute if score temp4 value matches 0 if predicate tid:random_66 positioned ~5 ~2 ~5 run function tid:misc/sin_chambers_nexus_ruins

#Hanging Gilded Blackstone
execute if score temp4 value matches 1 positioned ~1 ~2 ~1 run function tid:misc/sin_chambers_nexus_hanging

#Interior
execute if score temp4 value matches 2 positioned ~1 ~2 ~1 run function tid:misc/sin_chambers_nexus_interior

#Decide whether to put a staircase in the room
execute unless block ~5 ~1 ~5 air unless score temp4 value matches 2 positioned ~1 ~2 ~1 run function tid:misc/sin_chambers_nexus_stairs
execute unless block ~5 ~1 ~5 air if predicate tid:random_33 positioned ~1 ~2 ~1 run function tid:misc/sin_chambers_nexus_lava
