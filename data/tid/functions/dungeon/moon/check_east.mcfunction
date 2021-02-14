function tid:dungeon/moon/room_checks
execute unless score @s init matches 1 run function tid:dungeon/moon/room_checks_interior

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-2 ~-5 if blocks ~ ~128 ~ ~10 ~136 ~10 1001 1 1033 all run function tid:dungeon/moon/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_06 positioned ~1 ~-2 ~-4 if blocks ~ ~128 ~ ~5 ~136 ~8 1001 1 1033 all run function tid:dungeon/moon/select_hall_west
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-1 ~-2 if blocks ~ ~128 ~ ~5 ~134 ~4 1001 1 1033 all run function tid:dungeon/moon/select_stairs_east
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-3 ~-2 if blocks ~ ~128 ~ ~5 ~134 ~4 1001 1 1033 all run function tid:dungeon/moon/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~1 ~-1 ~-2 if blocks ~ ~128 ~ ~4 ~134 ~4 1001 1 1033 all run function tid:dungeon/moon/select_cross

execute if score @s failed matches 1.. if block ~3 ~-2 ~ air positioned ~1 ~-2 ~-4 if blocks ~ ~128 ~ ~4 ~136 ~8 1001 1 1033 all run function tid:dungeon/moon/select_connector_east
