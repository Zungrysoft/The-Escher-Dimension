function tid:dungeon/test/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-1 if blocks ~ ~-130 ~ ~2 ~-124 ~2 1001 129 1001 all run function tid:dungeon/test/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~1 ~-1 ~-1 if blocks ~ ~-130 ~ ~5 ~-121 ~2 1001 129 1001 all run function tid:dungeon/test/select_stairs_east
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-4 ~-1 if blocks ~ ~-130 ~ ~5 ~-121 ~2 1001 129 1001 all run function tid:dungeon/test/select_stairs_west