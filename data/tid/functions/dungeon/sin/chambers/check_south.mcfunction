function tid:dungeon/sin/chambers/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-3 ~-2 ~1 if blocks ~ ~-128 ~ ~6 ~-119 ~6 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-4 ~-2 ~1 if blocks ~ ~-128 ~ ~8 ~-121 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_straight_north
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-9 ~-1 ~1 if blocks ~ ~-128 ~ ~13 ~-119 ~10 1033 1 1033 all run function tid:dungeon/sin/chambers/select_treasure_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-2 ~1 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1033 1 1033 all run function tid:dungeon/sin/chambers/select_junction_south
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-5 ~-2 ~1 if blocks ~ ~-128 ~ ~10 ~-113 ~10 1033 1 1033 all run function tid:dungeon/sin/chambers/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-3 ~-7 ~1 if blocks ~ ~-128 ~ ~30 ~-118 ~30 1033 1 1033 all run function tid:dungeon/sin/chambers/select_open

#Tier Room
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-7 ~-18 ~1 if blocks ~4 ~-128 ~4 ~10 ~-121 ~10 1033 1 1033 all if blocks ~2 ~-120 ~2 ~12 ~-113 ~12 1033 1 1033 all if blocks ~0 ~-112 ~0 ~14 ~-106 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_tier_room

#Special rooms (rare)
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-9 ~-1 ~1 if blocks ~ ~-128 ~ ~18 ~-124 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_magma_room
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-3 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-9 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-3 ~-1 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-3 ~-9 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_north

#Special rooms (common if global value)
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 0 if predicate tid:random_04 positioned ~-9 ~-1 ~1 if blocks ~ ~-128 ~ ~18 ~-124 ~18 1033 1 1033 all run function tid:dungeon/sin/chambers/select_magma_room
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 1 if predicate tid:random_08 positioned ~-3 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 1 if predicate tid:random_08 positioned ~-12 ~-6 ~1 if blocks ~ ~-128 ~ ~24 ~-112 ~9 1033 1 1033 all run function tid:dungeon/sin/chambers/select_ravine
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 2 if predicate tid:random_04 positioned ~-3 ~-1 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_south
execute unless score @s failed matches 1.. if score sin_chambers_global value matches 2 if predicate tid:random_04 positioned ~-3 ~-9 ~1 if blocks ~ ~-128 ~ ~6 ~-114 ~14 1033 1 1033 all run function tid:dungeon/sin/chambers/select_stairs_north
