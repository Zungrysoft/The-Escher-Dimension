function tid:update_coords
function tid:dungeon/jungle/room_checks

execute if entity @s[name="jungle_north"] unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~-5 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_north
execute if entity @s[name="jungle_junction_north"] unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-5 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_north

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-2 ~-4 ~-13 if blocks ~ ~-128 ~ ~4 ~-120 ~12 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-2 ~-2 ~-7 if blocks ~ ~-128 ~ ~4 ~-117 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_north
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-2 ~-10 ~-7 if blocks ~ ~-128 ~ ~4 ~-117 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_south
execute unless score @s failed matches 1.. if predicate tid:random_03 if score @s y matches 180..230 unless entity @e[type=area_effect_cloud,name="jungle_towerbase",distance=0..55] positioned ~-10 ~-4 ~-21 if blocks ~ ~-128 ~ ~20 ~-111 ~20 1001 129 1001 all run function tid:dungeon/jungle/select_towerbase
execute unless score @s failed matches 1.. if predicate tid:random_004 positioned ~-5 ~-2 ~-11 if blocks ~ ~-128 ~ ~10 ~-121 ~10 1001 129 1001 all run function tid:dungeon/jungle/select_totem

execute if score @s failed matches 1.. positioned ~-2 ~-2 ~-3 if blocks ~ ~-128 ~ ~2 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_endcap_north