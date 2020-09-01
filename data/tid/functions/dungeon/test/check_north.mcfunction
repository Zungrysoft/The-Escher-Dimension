function tid:dungeon/test/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-1 ~-1 ~-3 if blocks ~ ~-130 ~ ~2 ~-124 ~2 1001 129 1001 all run function tid:dungeon/test/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-1 ~-1 ~-6 if blocks ~ ~-130 ~ ~2 ~-121 ~5 1001 129 1001 all run function tid:dungeon/test/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-1 ~-4 ~-6 if blocks ~ ~-130 ~ ~2 ~-121 ~5 1001 129 1001 all run function tid:dungeon/test/select_stairs_south