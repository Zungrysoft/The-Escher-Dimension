function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~-5 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_north

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-2 ~-4 ~-13 if blocks ~ ~-128 ~ ~4 ~-120 ~12 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_north