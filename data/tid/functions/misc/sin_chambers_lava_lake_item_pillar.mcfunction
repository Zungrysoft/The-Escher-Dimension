#Decide how tall to make it
scoreboard players set temp4 value 0
execute if predicate tid:random_50 run scoreboard players set temp4 value 1
execute if predicate tid:random_33 run scoreboard players set temp4 value 2
execute if predicate tid:random_25 run scoreboard players set temp4 value 3

#Platform
execute if score temp4 value matches 0 positioned ~ ~1 ~ run function tid:misc/sin_chambers_lava_lake_item_pillar_top
execute if score temp4 value matches 1 positioned ~ ~2 ~ run function tid:misc/sin_chambers_lava_lake_item_pillar_top
execute if score temp4 value matches 2 positioned ~ ~3 ~ run function tid:misc/sin_chambers_lava_lake_item_pillar_top
execute if score temp4 value matches 3 positioned ~ ~4 ~ run function tid:misc/sin_chambers_lava_lake_item_pillar_top
