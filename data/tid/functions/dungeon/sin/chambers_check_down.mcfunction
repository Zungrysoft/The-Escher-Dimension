function tid:dungeon/sin/chambers_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~ ~-10 ~ if blocks ~ ~-128 ~ ~6 ~-121 ~6 33 129 33 all run function tid:dungeon/sin/chambers_select_stairs_down
