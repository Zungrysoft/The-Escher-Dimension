#Base
fill ~1 ~ ~1 ~-1 ~ ~-1 chiseled_polished_blackstone
fill ~1 ~-1 ~1 ~-1 ~-3 ~-1 polished_blackstone
setblock ~ ~ ~ polished_blackstone_bricks

#Determine what we're building
scoreboard players set temp5 value 0
execute if predicate tid:random_40 run scoreboard players set temp5 value 1

#Chest
execute if score temp5 value matches 0 if predicate tid:random_20 run setblock ~ ~1 ~ chest[facing=north]{LootTable: "tid:chests/sin_chambers"}
execute if score temp5 value matches 0 if predicate tid:random_25 run setblock ~ ~1 ~ chest[facing=south]{LootTable: "tid:chests/sin_chambers"}
execute if score temp5 value matches 0 if predicate tid:random_33 run setblock ~ ~1 ~ chest[facing=west]{LootTable: "tid:chests/sin_chambers"}
execute if score temp5 value matches 0 if predicate tid:random_50 run setblock ~ ~1 ~ chest[facing=east]{LootTable: "tid:chests/sin_chambers"}

#Spawner
execute if score temp5 value matches 1 positioned ~ ~1 ~ run function tid:misc/sin_chambers_random_spawner
