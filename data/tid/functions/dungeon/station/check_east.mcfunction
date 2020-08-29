function tid:dungeon/station_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_07 if blocks ~1 ~127 ~-5 ~15 ~135 ~5 33 1 33 all run function tid:dungeon/station_select_stack_east
execute unless score @s failed matches 1.. if predicate tid:random_10 if blocks ~1 ~125 ~-2 ~7 ~133 ~2 33 1 33 all run function tid:dungeon/station_select_bridge_east
execute unless score @s failed matches 1.. if predicate tid:random_02 if blocks ~1 ~125 ~-2 ~11 ~135 ~2 33 1 33 all run function tid:dungeon/station_select_stairs_upward_east
execute unless score @s failed matches 1.. if predicate tid:random_005 if blocks ~1 ~123 ~-2 ~11 ~133 ~2 33 1 33 all run function tid:dungeon/station_select_stairs_downward_east
execute unless score @s failed matches 1.. if predicate tid:random_01 if blocks ~1 ~125 ~-2 ~5 ~133 ~2 33 1 33 all run function tid:dungeon/station_select_junction_east