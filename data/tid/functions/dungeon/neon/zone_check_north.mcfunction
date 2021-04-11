function tid:dungeon/neon/zone_room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-9 ~-1 ~-32 if blocks ~ ~128 ~ ~19 ~152 ~29 1001 1 1001 all run function tid:dungeon/neon/select_zone_large_north
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-15 ~-1 ~-32 if blocks ~ ~128 ~ ~29 ~152 ~29 1001 1 1001 all run function tid:dungeon/neon/select_zone_square
