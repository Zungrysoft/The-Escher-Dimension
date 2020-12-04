function tid:dungeon/sin/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-124 ~4 1001 1 1001 all run function tid:dungeon/sin/select_tee
