function tid:dungeon/soulsand/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-29 ~-2 ~-14 if blocks ~ ~128 ~ ~28 ~138 ~28 1001 1 1001 all run function tid:dungeon/soulsand/select_arena
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-17 ~-2 ~-3 if blocks ~ ~128 ~ ~6 ~134 ~16 1001 1 1001 all run function tid:dungeon/soulsand/select_hall_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-10 ~-1 ~-3 if blocks ~ ~128 ~ ~9 ~139 ~6 1001 1 1001 all run function tid:dungeon/soulsand/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_003 positioned ~-10 ~-6 ~-3 if blocks ~ ~128 ~ ~9 ~139 ~6 1001 1 1001 all run function tid:dungeon/soulsand/select_stairs_east
