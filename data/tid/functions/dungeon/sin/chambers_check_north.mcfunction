function tid:dungeon/sin/chambers_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-3 ~-2 ~-7 if blocks ~ ~-128 ~ ~6 ~-119 ~6 33 129 33 all run function tid:dungeon/sin/chambers_select_stairs
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-4 ~-2 ~-15 if blocks ~ ~-128 ~ ~8 ~-121 ~14 33 129 33 all run function tid:dungeon/sin/chambers_select_straight_north
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-9 ~-1 ~-11 if blocks ~ ~-128 ~ ~13 ~-119 ~10 33 129 33 all run function tid:dungeon/sin/chambers_select_treasure_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~-5 if blocks ~ ~-128 ~ ~4 ~-121 ~4 33 129 33 all run function tid:dungeon/sin/chambers_select_junction_north
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-5 ~-2 ~-11 if blocks ~ ~-128 ~ ~10 ~-113 ~10 33 129 33 all run function tid:dungeon/sin/chambers_select_nexus