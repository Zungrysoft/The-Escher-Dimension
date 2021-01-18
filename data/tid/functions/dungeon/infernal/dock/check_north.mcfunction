function tid:dungeon/infernal/dock/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-3 ~-3 ~-7 if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1001 all run function tid:dungeon/infernal/dock/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-3 ~-8 if blocks ~ ~128 ~ ~5 ~134 ~8 1001 1 1001 all run function tid:dungeon/infernal/dock/select_straight_north
