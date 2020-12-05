function tid:dungeon/sin/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-5 if blocks ~ ~-128 ~ ~4 ~-124 ~4 1001 1 1001 all run function tid:dungeon/sin/select_tee
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-3 ~-13 if blocks ~ ~-128 ~ ~4 ~-122 ~12 1001 1 1001 all run function tid:dungeon/sin/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-6 ~-2 ~-13 if blocks ~ ~-128 ~ ~12 ~-121 ~12 1001 1 1001 all run function tid:dungeon/sin/select_riser_medium
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-5 ~-1 ~-11 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 1 1001 all run function tid:dungeon/sin/select_room
