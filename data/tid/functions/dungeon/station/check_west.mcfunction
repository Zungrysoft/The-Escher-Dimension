function tid:dungeon/station/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-15 ~-1 ~-5 if blocks ~ ~128 ~ ~14 ~136 ~10 1033 1 1033 all run function tid:dungeon/station/select_stack_west
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-7 ~-3 ~-2 if blocks ~ ~128 ~ ~6 ~136 ~4 1033 1 1033 all run function tid:dungeon/station/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-11 ~-3 ~-2 if blocks ~ ~128 ~ ~10 ~138 ~4 1033 1 1033 all run function tid:dungeon/station/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-11 ~-5 ~-2 if blocks ~ ~128 ~ ~10 ~138 ~4 1033 1 1033 all run function tid:dungeon/station/select_stairs_east
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-5 ~-3 ~-2 if blocks ~ ~128 ~ ~4 ~136 ~4 1033 1 1033 all run function tid:dungeon/station/select_junction_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-13 ~-3 ~-6 if blocks ~ ~128 ~ ~12 ~136 ~12 1033 1 1033 all run function tid:dungeon/station/select_platform
