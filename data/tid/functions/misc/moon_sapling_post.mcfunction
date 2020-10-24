#Decide the height of the post
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1
execute if predicate tid:random_33 run scoreboard players set temp value 2

#Short
execute if score temp value matches 0 run setblock ~ ~ ~ end_stone_brick_wall
execute if score temp value matches 0 run setblock ~ ~1 ~ potted_birch_sapling

#Medium
execute if score temp value matches 0 run setblock ~ ~ ~ end_stone_brick_wall
execute if score temp value matches 0 run setblock ~ ~1 ~ end_stone_brick_wall
execute if score temp value matches 0 run setblock ~ ~2 ~ potted_birch_sapling

#Tall
execute if score temp value matches 0 run setblock ~ ~ ~ end_stone_brick_wall
execute if score temp value matches 0 run setblock ~ ~1 ~ end_stone_brick_wall
execute if score temp value matches 0 run setblock ~ ~2 ~ end_stone_brick_wall
execute if score temp value matches 0 run setblock ~ ~3 ~ potted_birch_sapling