#Decide what to put here
scoreboard players set temp3 value 0
execute if predicate tid:random_50 run scoreboard players set temp3 value 1

#Platform
execute if score temp3 value matches 0 run function tid:misc/sin_chambers_lava_lake_item_platform
execute if score temp3 value matches 1 run function tid:misc/sin_chambers_lava_lake_item_pillar
