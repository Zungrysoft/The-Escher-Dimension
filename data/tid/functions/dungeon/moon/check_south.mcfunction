function tid:dungeon/moon/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-2 ~1 if blocks ~ ~128 ~ ~10 ~136 ~10 1001 1 1033 all run function tid:dungeon/moon/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-2 ~-1 ~1 if blocks ~ ~128 ~ ~4 ~134 ~5 1001 1 1033 all run function tid:dungeon/moon/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-2 ~-3 ~1 if blocks ~ ~128 ~ ~4 ~134 ~5 1001 1 1033 all run function tid:dungeon/moon/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-2 ~-1 ~1 if blocks ~ ~128 ~ ~4 ~134 ~4 1001 1 1033 all run function tid:dungeon/moon/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-4 ~-2 ~1 if blocks ~ ~128 ~ ~8 ~136 ~4 1001 1 1033 all run function tid:dungeon/moon/select_connector_south
