function tid:dungeon/soulsand/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-29 ~-2 ~-14 if blocks ~ ~128 ~ ~28 ~138 ~28 1001 1 1001 all run function tid:dungeon/soulsand/select_arena
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-17 ~-2 ~-3 if blocks ~ ~128 ~ ~16 ~134 ~6 1001 1 1001 all run function tid:dungeon/soulsand/select_hall_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-10 ~-1 ~-3 if blocks ~ ~128 ~ ~9 ~139 ~6 1001 1 1001 all run function tid:dungeon/soulsand/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_003 positioned ~-10 ~-6 ~-3 if blocks ~ ~128 ~ ~9 ~139 ~6 1001 1 1001 all run function tid:dungeon/soulsand/select_stairs_east

#Room
execute unless score @s failed matches 1.. if predicate tid:random_03 unless entity @s[tag=room] positioned ~-17 ~-1 ~-8 if blocks ~ ~128 ~ ~16 ~148 ~16 1001 1 1001 all run function tid:dungeon/soulsand/select_room

#Junction
execute unless score @s failed matches 1.. if predicate tid:random_30 if entity @s[tag=straight] positioned ~-9 ~-2 ~-4 if blocks ~ ~128 ~ ~8 ~135 ~8 1001 1 1001 all run function tid:dungeon/soulsand/select_junction
