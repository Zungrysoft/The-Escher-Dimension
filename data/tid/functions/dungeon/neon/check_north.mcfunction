function tid:dungeon/neon/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~0 ~-2 ~-2 if blocks ~ ~-3 ~ ~1 ~3 ~1 1033 1 1001 all run function tid:dungeon/neon/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~0 ~-2 ~-7 if blocks ~ ~-3 ~ ~1 ~3 ~6 1033 1 1001 all run function tid:dungeon/neon/select_straight_north
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~0 ~-2 ~-2 if blocks ~ ~-3 ~ ~1 ~6 ~1 1033 1 1001 all run function tid:dungeon/neon/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~0 ~-4 ~-2 if blocks ~ ~-3 ~ ~1 ~6 ~1 1033 1 1001 all run function tid:dungeon/neon/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-4 ~-3 ~-9 if blocks ~ ~-3 ~ ~8 ~9 ~8 1033 1 1001 all run function tid:dungeon/neon/select_cross