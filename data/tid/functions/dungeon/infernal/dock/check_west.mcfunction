function tid:dungeon/infernal/dock/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-7 ~-3 ~-3 if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1001 all run function tid:dungeon/infernal/dock/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-8 ~-3 ~-2 if blocks ~ ~128 ~ ~8 ~134 ~5 1001 1 1001 all run function tid:dungeon/infernal/dock/select_straight_west

execute if score @s failed matches 1.. if predicate tid:random_15 positioned ~-8 ~-3 ~-2 if blocks ~ ~128 ~ ~10 ~138 ~5 1001 1 1001 all run function tid:dungeon/infernal/dock/select_chest_west
