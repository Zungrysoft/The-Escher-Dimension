function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_west
execute if score @s failed matches 1.. positioned ~-3 ~-2 ~-2 if blocks ~ ~-128 ~ ~2 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_endcap_west

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-13 ~-4 ~-2 if blocks ~ ~-128 ~ ~12 ~-120 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-7 ~-2 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_west
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-7 ~-10 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_east
execute unless score @s failed matches 1.. if predicate tid:random_001 positioned ~-15 ~-4 ~-5 if blocks ~ ~-128 ~ ~14 ~-115 ~11 1001 129 1001 all run function tid:dungeon/jungle/select_pyramid_west
execute unless score @s failed matches 1.. if predicate tid:random_03 if score @s y matches 180..230 unless entity @e[type=area_effect_cloud,name="jungle_towerbase",distance=0..65] positioned ~-21 ~-4 ~-10 if blocks ~ ~-128 ~ ~20 ~-119 ~20 1001 129 1001 all run function tid:dungeon/jungle/select_towerbase
execute unless score @s failed matches 1.. if predicate tid:random_004 positioned ~-11 ~-2 ~-5 if blocks ~ ~-128 ~ ~10 ~-121 ~10 1001 129 1001 all run function tid:dungeon/jungle/select_totem