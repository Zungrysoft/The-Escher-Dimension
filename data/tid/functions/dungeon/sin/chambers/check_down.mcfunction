function tid:dungeon/sin/chambers/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~ ~-10 ~ if blocks ~ ~-128 ~ ~6 ~-121 ~6 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_down
