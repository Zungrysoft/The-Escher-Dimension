function tid:dungeon/infernal/dock/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_03 unless entity @e[type=area_effect_cloud,name="dock_marker",distance=..10] positioned ~-7 ~-3 ~-3 if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1001 all run function tid:dungeon/infernal/dock/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-8 ~-3 ~-2 if blocks ~ ~128 ~ ~8 ~134 ~5 1001 1 1001 all run function tid:dungeon/infernal/dock/select_straight_west

execute if score @s failed matches 1.. if predicate tid:random_90 if score infernal_dock_chests value matches 1.. positioned ~-8 ~-3 ~-2 if blocks ~ ~128 ~ ~10 ~138 ~5 1001 1 1001 all run function tid:dungeon/infernal/dock/select_chest_west
