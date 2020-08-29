function tid:dungeon/station_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_15 if blocks ~-7 ~129 ~-5 ~7 ~137 ~9 33 1 33 all run function tid:dungeon/station_select_stack_up
