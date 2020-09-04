function tid:dungeon/station/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-7 ~-1 ~-11 if blocks ~ ~128 ~ ~14 ~136 ~10 1033 1 1033 all run function tid:dungeon/station/select_stack_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-3 ~-7 if blocks ~ ~128 ~ ~4 ~136 ~6 1033 1 1033 all run function tid:dungeon/station/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-2 ~-3 ~-25 if blocks ~ ~128 ~ ~4 ~136 ~24 1033 1 1033 all run function tid:dungeon/station/select_longbridge_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-3 ~-5 if blocks ~ ~128 ~ ~4 ~136 ~4 1033 1 1033 all run function tid:dungeon/station/select_junction_north
