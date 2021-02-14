function tid:dungeon/sin/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-5 if blocks ~ ~-128 ~ ~4 ~-124 ~4 1001 1 1001 all run function tid:dungeon/sin/select_tee
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-3 ~-13 if blocks ~ ~-128 ~ ~4 ~-122 ~12 1001 1 1001 all run function tid:dungeon/sin/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-6 ~-2 ~-13 if blocks ~ ~-128 ~ ~12 ~-121 ~12 1001 1 1001 all run function tid:dungeon/sin/select_riser_medium
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-5 ~-1 ~-11 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 1 1001 all run function tid:dungeon/sin/select_room
execute unless score @s failed matches 1.. if predicate tid:random_02 unless score @s counter1 matches 8 positioned ~-2 ~-3 ~-10 if blocks ~ ~-128 ~ ~4 ~-118 ~9 1001 1 1001 all run function tid:dungeon/sin/select_stairs_north

#Light Gray
execute unless score @s failed matches 1.. if predicate tid:random_15 if score @s counter1 matches 8 positioned ~0 ~-1 ~-4 if blocks ~ ~-128 ~ ~0 ~-120 ~3 1001 1 1001 all run function tid:dungeon/sin/select_thinstairs_north

#White
execute unless score @s failed matches 1.. if predicate tid:random_06 if score @s counter1 matches 0 positioned ~-4 ~-6 ~-7 if blocks ~ ~-128 ~ ~18 ~-114 ~6 1001 1 1001 all run function tid:dungeon/sin/select_church

#Green
execute unless score @s failed matches 1.. if predicate tid:random_04 if score @s counter1 matches 13 positioned ~-6 ~-5 ~-13 if blocks ~ ~-128 ~ ~8 ~-115 ~17 1001 1 1001 all run function tid:dungeon/sin/select_silo

#End piece
execute if score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-125 ~1 1001 1 1001 all run function tid:dungeon/sin/select_end_north
