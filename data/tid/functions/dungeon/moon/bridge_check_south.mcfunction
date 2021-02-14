function tid:dungeon/moon/room_checks

execute if score @s failed matches 1.. positioned ~-1 ~-2 ~1 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-1 ~-2 ~1 if blocks ~ ~128 ~ ~3 ~134 ~3 1001 1 1033 all run function tid:dungeon/moon/select_junction
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-2 ~1 if blocks ~ ~128 ~ ~3 ~134 ~7 1001 1 1033 all run function tid:dungeon/moon/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_06 positioned ~-3 ~-4 ~1 unless entity @e[type=area_effect_cloud,name="moon_tower_marker",distance=0..10] if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1033 all run function tid:dungeon/moon/select_towerbase

execute unless score @s failed matches 1.. unless block ~ ~-2 ~3 air positioned ~-6 ~-2 ~1 if blocks ~ ~128 ~ ~8 ~136 ~4 1001 1 1033 all run function tid:dungeon/moon/select_connector_north
