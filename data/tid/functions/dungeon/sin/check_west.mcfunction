function tid:dungeon/sin/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-5 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-124 ~4 1001 1 1001 all run function tid:dungeon/sin/select_tee
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-13 ~-3 ~-2 if blocks ~ ~-128 ~ ~12 ~-122 ~4 1001 1 1001 all run function tid:dungeon/sin/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-13 ~-2 ~-6 if blocks ~ ~-128 ~ ~12 ~-121 ~12 1001 1 1001 all run function tid:dungeon/sin/select_riser_medium
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-11 ~-1 ~-5 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 1 1001 all run function tid:dungeon/sin/select_room
execute unless score @s failed matches 1.. if predicate tid:random_02 unless score @s counter1 matches 8 positioned ~-10 ~-3 ~-2 if blocks ~ ~-128 ~ ~9 ~-118 ~4 1001 1 1001 all run function tid:dungeon/sin/select_stairs_west

#Light Gray
execute unless score @s failed matches 1.. if predicate tid:random_15 if score @s counter1 matches 8 positioned ~-4 ~-1 ~0 if blocks ~ ~-128 ~ ~3 ~-120 ~0 1001 1 1001 all run function tid:dungeon/sin/select_thinstairs_west

#Black
execute unless score @s failed matches 1.. if predicate tid:random_08 if score @s counter1 matches 15 positioned ~-9 ~-7 ~-5 if blocks ~ ~-128 ~ ~8 ~-115 ~17 1001 1 1001 all run function tid:dungeon/sin/select_slant

#Green
execute unless score @s failed matches 1.. if predicate tid:random_04 if score @s counter1 matches 13 positioned ~-13 ~-5 ~-6 if blocks ~ ~-128 ~ ~8 ~-115 ~17 1001 1 1001 all run function tid:dungeon/sin/select_silo

#End piece
execute if score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-2 if blocks ~ ~-128 ~ ~4 ~-125 ~1 1001 1 1001 all run function tid:dungeon/sin/select_end_west
