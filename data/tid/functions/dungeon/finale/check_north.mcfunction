function tid:dungeon/finale/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_20 positioned ~-7 ~-1 ~-14 if blocks ~ ~-128 ~ ~14 ~-112 ~13 1001 129 1001 all run function tid:dungeon/finale/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_20 positioned ~-5 ~-1 ~-29 if blocks ~ ~-128 ~ ~10 ~-119 ~28 1001 129 1001 all run function tid:dungeon/finale/select_straight_north
