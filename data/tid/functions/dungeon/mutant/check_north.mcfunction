function tid:dungeon/mutant/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-3 ~-11 if blocks ~ ~128 ~ ~10 ~136 ~10 1001 1 1001 all run function tid:dungeon/mutant/select_small
execute unless score @s failed matches 1.. if predicate tid:random_08 positioned ~-3 ~-3 ~-7 if blocks ~ ~128 ~ ~6 ~144 ~6 1001 1 1001 all run function tid:dungeon/mutant/select_tall
execute unless score @s failed matches 1.. if predicate tid:random_20 positioned ~-2 ~-2 ~-17 if blocks ~ ~128 ~ ~4 ~132 ~16 1001 1 1001 all run function tid:dungeon/mutant/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-9 ~-3 ~-19 if blocks ~ ~128 ~ ~18 ~138 ~18 1001 1 1001 all run function tid:dungeon/mutant/select_arena

execute if score @s failed matches 1.. if predicate tid:random_50 positioned ~-2 ~-2 ~-4 if blocks ~ ~128 ~ ~4 ~134 ~3 1001 1 1001 all run function tid:dungeon/mutant/select_closet_north
