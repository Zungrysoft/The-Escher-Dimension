function tid:dungeon/station_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_10 if blocks ~-7 ~118 ~-5 ~7 ~126 ~5 33 1 33 all run function tid:dungeon/station_select_stack_down
execute unless score @s failed matches 1.. if predicate tid:random_05 if blocks ~-7 ~124 ~-5 ~7 ~126 ~5 33 1 33 all run function tid:dungeon/station_select_bottom_down