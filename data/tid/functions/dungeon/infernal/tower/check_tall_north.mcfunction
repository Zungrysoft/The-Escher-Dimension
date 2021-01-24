function tid:dungeon/infernal/tower/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-6 if blocks ~ ~128 ~ ~6 ~132 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_small
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-6 ~-1 ~-8 if blocks ~ ~128 ~ ~12 ~132 ~8 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_long

execute unless score @s failed matches 1.. if predicate tid:random_10 unless entity @e[type=area_effect_cloud,name="tower_marker",distance=0..15] positioned ~-3 ~-1 ~-6 if blocks ~ ~128 ~ ~6 ~136 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_short_stairs
