function tid:dungeon/soulsand/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-14 ~-2 ~-29 if blocks ~ ~128 ~ ~28 ~138 ~28 1001 1 1001 all run function tid:dungeon/soulsand/select_arena
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-2 ~-17 if blocks ~ ~128 ~ ~6 ~134 ~16 1001 1 1001 all run function tid:dungeon/soulsand/select_hall_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-3 ~-1 ~-10 if blocks ~ ~128 ~ ~6 ~139 ~9 1001 1 1001 all run function tid:dungeon/soulsand/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_003 positioned ~-3 ~-6 ~-10 if blocks ~ ~128 ~ ~6 ~139 ~9 1001 1 1001 all run function tid:dungeon/soulsand/select_stairs_south

#Room
execute unless score @s failed matches 1.. if predicate tid:random_03 unless entity @s[tag=room] positioned ~-8 ~-1 ~-17 if blocks ~ ~128 ~ ~16 ~148 ~16 1001 1 1001 all run function tid:dungeon/soulsand/select_room

#Junction
execute unless score @s failed matches 1.. if predicate tid:random_30 if entity @s[tag=straight] positioned ~-4 ~-2 ~-9 if blocks ~ ~128 ~ ~8 ~135 ~8 1001 1 1001 all run function tid:dungeon/soulsand/select_junction
