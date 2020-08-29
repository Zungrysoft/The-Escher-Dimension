function tid:dungeon/station/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_15 positioned ~-7 ~1 ~-5 if blocks ~ ~128 ~ ~4 ~137 ~10 1033 129 1033 all run function tid:dungeon/station/select_stack_up
