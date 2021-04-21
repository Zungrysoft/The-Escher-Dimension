function tid:dungeon/wicked/room_checks

#Straight
execute unless score @s failed matches 1.. if predicate tid:random_75 positioned ~-2 ~0 ~-9 if blocks ~ ~-128 ~ ~4 ~-122 ~8 1001 129 1033 all run function tid:dungeon/wicked/select_wall_north

#Cross
execute unless score @s failed matches 1.. positioned ~-4 ~0 ~-9 if blocks ~ ~-128 ~ ~8 ~-122 ~8 1001 129 1033 all run function tid:dungeon/wicked/select_wall_cross
