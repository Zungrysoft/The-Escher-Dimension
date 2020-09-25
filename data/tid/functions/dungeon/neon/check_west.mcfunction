function tid:dungeon/neon/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~0 if blocks ~ ~-2 ~-1 ~1 ~3 ~2 1033 1 1001 all run function tid:dungeon/neon/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-7 ~-2 ~0 if blocks ~ ~-2 ~-1 ~6 ~3 ~2 1033 1 1001 all run function tid:dungeon/neon/select_straight_west
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-2 ~-2 ~0 if blocks ~ ~-2 ~-1 ~1 ~6 ~2 1033 1 1001 all run function tid:dungeon/neon/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-2 ~-4 ~0 if blocks ~ ~-2 ~-1 ~1 ~6 ~2 1033 1 1001 all run function tid:dungeon/neon/select_stairs_east
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-9 ~-3 ~-4 if blocks ~ ~-3 ~ ~9 ~9 ~9 1033 1 1001 all run function tid:dungeon/neon/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-3 ~-2 ~0 if blocks ~ ~-3 ~-1 ~2 ~8 ~2 1033 1 1001 all run function tid:dungeon/neon/select_ladder_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-3 ~-7 ~0 if blocks ~ ~-3 ~-1 ~2 ~8 ~2 1033 1 1001 all run function tid:dungeon/neon/select_ladder_east