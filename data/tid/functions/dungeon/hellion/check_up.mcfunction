function tid:dungeon/hellion/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_20 if blocks ~ ~-122 ~ ~2 ~-122 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_stairwell
