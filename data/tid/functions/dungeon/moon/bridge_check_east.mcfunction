function tid:dungeon/moon/room_checks

execute if score @s failed matches 1.. positioned ~1 ~-2 ~-1 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction

execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~1 ~-2 ~-1 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-2 ~-1 if blocks ~ ~128 ~ ~7 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_15 positioned ~1 ~-4 ~-3 unless entity @e[type=area_effect_cloud,name="moon_tower_marker",distance=0..35] if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1033 all run function tid:dungeon/moon/select_towerbase

execute unless score @s failed matches 1.. unless block ~3 ~-2 ~ air positioned ~1 ~-2 ~-6 if blocks ~ ~128 ~ ~4 ~136 ~8 1001 1 1033 all run function tid:dungeon/moon/select_connector_west
