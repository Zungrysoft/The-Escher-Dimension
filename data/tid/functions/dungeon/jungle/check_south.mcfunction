function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~1 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_south

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-2 ~-4 ~1 if blocks ~ ~-128 ~ ~4 ~-120 ~12 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-2 ~-2 ~1 if blocks ~ ~-128 ~ ~4 ~-117 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_south
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-2 ~-10 ~1 if blocks ~ ~-128 ~ ~4 ~-117 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_north
execute unless score @s failed matches 1.. if predicate tid:random_03 if score @s y matches 180..230 unless entity @e[type=area_effect_cloud,name="jungle_towerbase",distance=0..55] positioned ~-10 ~-4 ~1 if blocks ~ ~-128 ~ ~20 ~-119 ~20 1001 129 1001 all run function tid:dungeon/jungle/select_towerbase
execute unless score @s failed matches 1.. if predicate tid:random_004 positioned ~-5 ~-2 ~1 if blocks ~ ~-128 ~ ~10 ~-121 ~10 1001 129 1001 all run function tid:dungeon/jungle/select_totem