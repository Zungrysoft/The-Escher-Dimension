#Choose position
scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players set temp2 value 1
execute if predicate tid:random_33 run scoreboard players set temp2 value 2
execute if predicate tid:random_25 run scoreboard players set temp2 value 3
execute if predicate tid:random_20 run scoreboard players set temp2 value 4
execute if predicate tid:random_15 run scoreboard players set temp2 value 5
execute if predicate tid:random_15 run scoreboard players set temp2 value 6
execute if predicate tid:random_10 run scoreboard players set temp2 value 7
execute if predicate tid:random_09 run scoreboard players set temp2 value 8
execute if predicate tid:random_08 run scoreboard players set temp2 value 9
execute if predicate tid:random_07 run scoreboard players set temp2 value 10

execute if score temp2 value matches 0 positioned ~ ~ ~-4 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 1 positioned ~ ~ ~-3 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 2 positioned ~ ~ ~-2 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 3 positioned ~ ~ ~-1 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 4 positioned ~ ~ ~0 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 5 positioned ~ ~ ~1 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 6 positioned ~ ~ ~2 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 7 positioned ~ ~ ~3 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 8 positioned ~ ~ ~4 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 9 positioned ~ ~ ~-5 run function tid:misc/sin_chambers_lava_lake_item
execute if score temp2 value matches 10 positioned ~ ~ ~5 run function tid:misc/sin_chambers_lava_lake_item
