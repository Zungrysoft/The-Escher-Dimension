function tid:dungeon/jungle/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-5 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_west
execute if score @s failed matches 1.. positioned ~-3 ~-2 ~-2 if blocks ~ ~-128 ~ ~2 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_endcap_west

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-13 ~-4 ~-2 if blocks ~ ~-128 ~ ~12 ~-120 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-7 ~-2 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_west
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-7 ~-10 ~-2 if blocks ~ ~-128 ~ ~6 ~-117 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_ladder_east
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-15 ~-4 ~-5 if blocks ~ ~-128 ~ ~14 ~-115 ~11 1001 129 1001 all run function tid:dungeon/jungle/select_pyramid_west