#Randomly decide the block
execute if predicate tid:random_40 run setblock ~ ~ ~ mossy_stone_bricks
execute if predicate tid:random_25 run setblock ~ ~ ~ cracked_stone_bricks
execute if predicate tid:random_25 run setblock ~ ~ ~ cracked_stone_bricks
execute if predicate tid:random_05 run setblock ~ ~ ~ infested_stone_bricks
execute if predicate tid:random_03 run setblock ~ ~ ~ infested_mossy_stone_bricks
execute if predicate tid:random_03 run setblock ~ ~ ~ infested_cracked_stone_bricks

#If there is air above, consider generating a grass patch
execute if predicate tid:random_01 if block ~ ~1 ~ air run function tid:dungeon/stronghold2/rng/grass_patch

#If there is air below, consider generating a willow
execute if predicate tid:random_02 positioned ~ ~-1 ~ if block ~ ~ ~ air run function tid:misc/stronghold2_willow_start
