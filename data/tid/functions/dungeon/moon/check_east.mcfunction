function tid:dungeon/moon/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-5 if blocks ~ ~128 ~ ~10 ~136 ~10 1001 1 1033 all run function tid:dungeon/moon/select_nexus