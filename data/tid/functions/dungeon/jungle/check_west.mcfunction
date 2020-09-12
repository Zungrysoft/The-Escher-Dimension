function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-2 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_west

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-13 ~-4 ~-2 if blocks ~ ~-128 ~ ~12 ~-120 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_west