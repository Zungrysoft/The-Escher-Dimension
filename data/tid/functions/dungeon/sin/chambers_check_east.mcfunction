function tid:dungeon/sin/chambers_room_checks
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~1 ~-2 ~-3 if blocks ~ ~-128 ~ ~6 ~-119 ~6 1033 1 1033 all run function tid:dungeon/sin/chambers_select_stairs
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-2 ~-4 if blocks ~ ~-128 ~ ~14 ~-121 ~8 1033 1 1033 all run function tid:dungeon/sin/chambers_select_straight_west
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-1 ~-7 if blocks ~ ~-128 ~ ~16 ~-121 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers_select_treasure_east
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-2 ~-2 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1033 1 1033 all run function tid:dungeon/sin/chambers_select_junction_east
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~1 ~-2 ~-5 if blocks ~ ~-128 ~ ~10 ~-113 ~10 1033 1 1033 all run function tid:dungeon/sin/chambers_select_nexus
