function tid:dungeon/moon/room_checks

execute unless score @s failed matches 1.. unless block ~ ~-2 ~-3 air positioned ~-1 ~-2 ~-5 if blocks ~ ~128 ~ ~8 ~136 ~4 1001 1 1033 all run function tid:dungeon/moon/select_connector_south

execute if score @s failed matches 1.. positioned ~-1 ~-2 ~-4 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction

execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-2 ~-4 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-1 ~-2 ~-8 if blocks ~ ~128 ~ ~3 ~134 ~7 1001 1 1033 all run function tid:dungeon/moon/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_15 positioned ~-3 ~-4 ~-8 unless entity @e[type=area_effect_cloud,name="moon_tower_marker",distance=0..35] if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1033 all run function tid:dungeon/moon/select_towerbase
execute unless score @s failed matches 1.. if predicate tid:random_25 positioned ~-7 ~-2 ~-10 unless entity @e[type=area_effect_cloud,name="moon_dropout",distance=0..30] if blocks ~ ~128 ~ ~9 ~134 ~9 1001 1 1033 all run function tid:dungeon/moon/select_dropout_north
