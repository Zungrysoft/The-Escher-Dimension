function tid:dungeon/station_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_03 if blocks ~-7 ~127 ~1 ~7 ~135 ~11 33 1 33 all run function tid:dungeon/station_select_stack_south
execute unless score @s failed matches 1.. if predicate tid:random_10 if blocks ~-2 ~125 ~1 ~2 ~133 ~7 33 1 33 all run function tid:dungeon/station_select_bridge_south
execute unless score @s failed matches 1.. if predicate tid:random_06 if blocks ~-2 ~125 ~1 ~2 ~133 ~5 33 1 33 all run function tid:dungeon/station_select_junction_south
execute unless score @s failed matches 1.. if predicate tid:random_005 if blocks ~-2 ~125 ~1 ~2 ~133 ~25 33 1 33 all run function tid:dungeon/station_select_longbridge_south
