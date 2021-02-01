function tid:dungeon/finale/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_20 positioned ~-14 ~-1 ~-7 if blocks ~ ~-128 ~ ~13 ~-112 ~14 1001 129 1001 all run function tid:dungeon/finale/select_nexus
execute unless score @s failed matches 1.. if score @s x matches -20..20 if predicate tid:random_20 positioned ~-29 ~-1 ~-5 if blocks ~ ~-128 ~ ~28 ~-119 ~10 1001 129 1001 all run function tid:dungeon/finale/select_straight_west

