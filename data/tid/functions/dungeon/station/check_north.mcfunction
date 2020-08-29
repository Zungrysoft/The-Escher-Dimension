function tid:dungeon/station_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_01 if blocks ~-7 ~127 ~-11 ~7 ~135 ~-1 33 1 33 all run function tid:dungeon/station_select_stack_north
execute unless score @s failed matches 1.. if predicate tid:random_10 if blocks ~-2 ~125 ~-7 ~2 ~133 ~-1 33 1 33 all run function tid:dungeon/station_select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_10 if blocks ~-2 ~125 ~-5 ~2 ~133 ~-1 33 1 33 all run function tid:dungeon/station_select_junction_north
execute unless score @s failed matches 1.. if predicate tid:random_005 if blocks ~-2 ~125 ~-25 ~2 ~133 ~-1 33 1 33 all run function tid:dungeon/station_select_longbridge_north