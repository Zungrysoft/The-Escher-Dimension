scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

#Flower pedestal
execute if score temp value matches 0..1 run setblock ~ ~ ~ end_stone_brick_stairs[facing=east,half=top]
execute if score temp value matches 0..1 run setblock ~ ~1 ~ potted_birch_sapling

#Hedge
execute if score temp value matches 2..3 run setblock ~ ~ ~ polished_granite
execute if score temp value matches 2..3 run fill ~ ~1 ~ ~ ~2 ~ acacia_leaves[persistent=true]

#Spawner
execute if score temp value matches 4..5 if predicate tid:random_33 run function tid:misc/moon_random_spawner

#Chest
execute if score temp value matches 6..7 run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/moon"}
execute if score temp value matches 6..7 run fill ~ ~1 ~ ~ ~2 ~ air