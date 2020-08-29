function tid:dungeon/sin/check_tries
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~-127 ~ ~6 ~-123 ~6 1 129 1 all run function tid:dungeon/sin/select_room
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-6 ~-1 ~-1 if blocks ~ ~-127 ~ ~5 ~-123 ~2 1 129 1 all run function tid:dungeon/sin/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-6 ~-4 ~-1 if blocks ~ ~-127 ~ ~5 ~-123 ~2 1 129 1 all run function tid:dungeon/sin/select_stairs_east
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-3 ~-1 ~-1 if blocks ~ ~-128 ~ ~2 ~-124 ~2 1 129 1 all run function tid:dungeon/sin/select_outside