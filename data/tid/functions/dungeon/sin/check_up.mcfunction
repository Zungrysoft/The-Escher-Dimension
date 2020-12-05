function tid:dungeon/sin/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-6 ~1 ~-6 if blocks ~ ~-128 ~ ~12 ~-121 ~12 1001 1 1001 all run function tid:dungeon/sin/select_riser_medium
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-4 ~1 ~-4 if blocks ~ ~-128 ~ ~8 ~-121 ~8 1001 1 1001 all run function tid:dungeon/sin/select_riser_small
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-8 ~1 ~-8 if blocks ~ ~-128 ~ ~16 ~-119 ~16 1001 1 1001 all run function tid:dungeon/sin/select_riser_large
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-10 ~1 ~-10 if blocks ~ ~-128 ~ ~20 ~-121 ~20 1001 1 1001 all run function tid:dungeon/sin/select_riser_huge
