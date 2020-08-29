function tid:dungeon/sin/plat_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_50 if blocks ~1 ~-129 ~-7 ~15 ~-125 ~7 1 129 1 all if blocks ~1 ~-2 ~-7 ~15 ~-2 ~7 1 155 1 all run function tid:dungeon/sin/plat_select_small_east

