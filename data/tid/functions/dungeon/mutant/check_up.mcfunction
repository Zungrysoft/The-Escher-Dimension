function tid:dungeon/mutant/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~1 ~-5 if blocks ~ ~128 ~ ~10 ~136 ~10 1001 1 1001 all run function tid:dungeon/mutant/select_small
execute unless score @s failed matches 1.. if predicate tid:random_08 positioned ~-3 ~1 ~-3 if blocks ~ ~128 ~ ~6 ~144 ~6 1001 1 1001 all run function tid:dungeon/mutant/select_tall
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-6 ~1 ~-6 if blocks ~ ~128 ~ ~12 ~145 ~12 1001 1 1001 all run function tid:dungeon/mutant/select_medium
