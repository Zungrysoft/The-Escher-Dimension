function tid:dungeon/station_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_03 if blocks ~-15 ~127 ~-5 ~-1 ~135 ~5 33 1 33 all run function tid:dungeon/station_select_stack_west
execute unless score @s failed matches 1.. if predicate tid:random_10 if blocks ~-7 ~125 ~-2 ~-1 ~133 ~2 33 1 33 all run function tid:dungeon/station_select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_005 if blocks ~-11 ~125 ~-2 ~-1 ~135 ~2 33 1 33 all run function tid:dungeon/station_select_stairs_upward_west
execute unless score @s failed matches 1.. if predicate tid:random_02 if blocks ~-11 ~123 ~-2 ~-1 ~133 ~2 33 1 33 all run function tid:dungeon/station_select_stairs_downward_west
execute unless score @s failed matches 1.. if predicate tid:random_03 if blocks ~-5 ~125 ~-2 ~-1 ~133 ~2 33 1 33 all run function tid:dungeon/station_select_junction_west