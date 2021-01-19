function tid:dungeon/infernal/glassbridge/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_03 unless entity @e[type=area_effect_cloud,name="glassbridge_marker",distance=..40] positioned ~1 ~-8 ~-5 if blocks ~ ~128 ~ ~20 ~143 ~10 1001 1 1001 all run function tid:dungeon/infernal/glassbridge/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-8 ~-4 if blocks ~ ~128 ~ ~29 ~143 ~8 1001 1 1001 all run function tid:dungeon/infernal/glassbridge/select_straight_west
