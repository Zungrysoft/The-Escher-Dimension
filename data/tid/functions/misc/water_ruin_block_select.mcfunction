setblock ~ ~ ~ mossy_cobblestone
execute if predicate tid:random_50 run setblock ~ ~ ~ cobblestone
execute if predicate tid:random_33 run setblock ~ ~ ~ stone_bricks
execute if predicate tid:random_25 run setblock ~ ~ ~ mossy_stone_bricks
execute if predicate tid:random_20 run setblock ~ ~ ~ stone
execute if predicate tid:random_01 run setblock ~ ~ ~ chiseled_stone_bricks
execute if predicate tid:random_001 if predicate tid:random_50 run setblock ~ ~ ~ diamond_ore
execute if predicate tid:random_001 run setblock ~ ~ ~ gold_ore
execute if predicate tid:random_001 run setblock ~ ~ ~ redstone_ore
execute if predicate tid:random_002 run setblock ~ ~ ~ iron_ore
execute if predicate tid:random_002 run setblock ~ ~ ~ lapis_ore

#Decide on water blocks
scoreboard players set temp9 value 0
execute unless block ~1 ~ ~ water run scoreboard players add temp9 value 1
execute unless block ~-1 ~ ~ water run scoreboard players add temp9 value 1
execute unless block ~ ~ ~1 water run scoreboard players add temp9 value 1
execute unless block ~ ~ ~-1 water run scoreboard players add temp9 value 1
execute unless block ~ ~-1 ~ water run scoreboard players add temp9 value 1
execute if predicate tid:random_30 if score temp9 value matches 1 if block ~ ~-1 ~ water run setblock ~ ~ ~ iron_bars[waterlogged=true]
execute if predicate tid:random_20 if score temp9 value matches 1 run setblock ~ ~ ~ water
execute if predicate tid:random_10 if score temp9 value matches 2.. run setblock ~ ~ ~ water
