function tid:dungeon/sin/check_tries
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~1 if blocks ~ ~-127 ~ ~6 ~-123 ~6 1 129 1 all run function tid:dungeon/sin/select_room
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-1 ~1 if blocks ~ ~-127 ~ ~2 ~-123 ~5 1 129 1 all run function tid:dungeon/sin/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-1 ~-4 ~1 if blocks ~ ~-127 ~ ~2 ~-123 ~5 1 129 1 all run function tid:dungeon/sin/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-1 ~1 if blocks ~ ~-128 ~ ~2 ~-124 ~2 1 129 1 all run function tid:dungeon/sin/select_stairs_south