function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-5 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_north
execute if score @s failed matches 1.. positioned ~-2 ~-2 ~-3 if blocks ~ ~-128 ~ ~2 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_endcap_north

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-2 ~-4 ~-13 if blocks ~ ~-128 ~ ~4 ~-120 ~12 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-2 ~-2 ~-7 if blocks ~ ~-128 ~ ~4 ~-117 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_north
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-2 ~-10 ~-7 if blocks ~ ~-128 ~ ~4 ~-117 ~6 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_south