function tid:dungeon/neon/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~0 ~-2 ~1 if blocks ~-1 ~-3 ~ ~2 ~3 ~1 1033 1 1001 all run function tid:dungeon/neon/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~0 ~-2 ~1 if blocks ~-1 ~-3 ~ ~2 ~3 ~6 1033 1 1001 all run function tid:dungeon/neon/select_straight_north
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~0 ~-2 ~1 if blocks ~-1 ~-3 ~ ~2 ~6 ~1 1033 1 1001 all run function tid:dungeon/neon/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~0 ~-4 ~1 if blocks ~-1 ~-3 ~ ~2 ~6 ~1 1033 1 1001 all run function tid:dungeon/neon/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-4 ~-3 ~1 if blocks ~ ~-3 ~ ~9 ~9 ~9 1033 1 1001 all run function tid:dungeon/neon/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~0 ~-2 ~1 if blocks ~-1 ~-3 ~ ~2 ~8 ~2 1033 1 1001 all run function tid:dungeon/neon/select_ladder_south
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~0 ~-7 ~1 if blocks ~-1 ~-3 ~ ~2 ~8 ~2 1033 1 1001 all run function tid:dungeon/neon/select_ladder_north