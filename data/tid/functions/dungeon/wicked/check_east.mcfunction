function tid:dungeon/wicked/room_checks

#Straight
execute unless score @s failed matches 1.. if predicate tid:random_75 positioned ~1 ~0 ~-2 if blocks ~ ~-128 ~ ~8 ~-122 ~4 1001 129 1033 all run function tid:dungeon/wicked/select_wall_west

#Cross
execute unless score @s failed matches 1.. positioned ~1 ~0 ~-4 if blocks ~ ~-128 ~ ~8 ~-122 ~8 1001 129 1033 all run function tid:dungeon/wicked/select_wall_cross
