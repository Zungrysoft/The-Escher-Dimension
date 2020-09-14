function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_east
execute if score @s failed matches 1.. positioned ~1 ~-2 ~-2 if blocks ~ ~-128 ~ ~2 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_endcap_east

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-4 ~-2 if blocks ~ ~-128 ~ ~12 ~-120 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~1 ~-2 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_east
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~1 ~-10 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_west