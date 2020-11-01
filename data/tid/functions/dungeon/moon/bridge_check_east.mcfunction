function tid:dungeon/moon/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-2 ~-1 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~1 ~-2 ~-1 if blocks ~ ~128 ~ ~7 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-4 ~-3 if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1033 all run function tid:dungeon/moon/select_towerbase
