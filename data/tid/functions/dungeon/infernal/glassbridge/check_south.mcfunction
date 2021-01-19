function tid:dungeon/infernal/glassbridge/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_03 unless entity @e[type=area_effect_cloud,name="glassbridge_marker",distance=..40] positioned ~-5 ~-8 ~1 if blocks ~ ~128 ~ ~10 ~143 ~20 1001 1 1001 all run function tid:dungeon/infernal/glassbridge/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-4 ~-8 ~1 if blocks ~ ~128 ~ ~8 ~143 ~29 1001 1 1001 all run function tid:dungeon/infernal/glassbridge/select_straight_north
