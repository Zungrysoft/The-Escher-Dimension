function tid:dungeon/sin/chambers/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-3 ~-2 ~1 if blocks ~ ~-128 ~ ~6 ~-119 ~6 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-4 ~-2 ~1 if blocks ~ ~-128 ~ ~8 ~-121 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_straight_north
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-9 ~-1 ~1 if blocks ~ ~-128 ~ ~13 ~-119 ~10 1033 1 1033 all run function tid:dungeon/sin/chambers/select_treasure_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~1 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1033 1 1033 all run function tid:dungeon/sin/chambers/select_junction_south
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-5 ~-2 ~1 if blocks ~ ~-128 ~ ~10 ~-113 ~10 1033 1 1033 all run function tid:dungeon/sin/chambers/select_nexus

#Special rooms (rare)
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-9 ~-1 ~1 if blocks ~ ~-128 ~ ~18 ~-124 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_magma_room
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-3 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-9 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-3 ~-1 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-3 ~-9 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_north

#Special rooms (common if global value)
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 0 if predicate tid:random_04 positioned ~-9 ~-1 ~1 if blocks ~ ~-128 ~ ~18 ~-124 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_magma_room
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 1 if predicate tid:random_04 positioned ~-3 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 1 if predicate tid:random_04 positioned ~-12 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 2 if predicate tid:random_04 positioned ~-3 ~-1 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_south
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 2 if predicate tid:random_04 positioned ~-3 ~-9 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_north
