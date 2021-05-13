function tid:dungeon/neon/zone_room_checks

#Rooms
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-32 ~-1 ~-9 if blocks ~ ~128 ~ ~29 ~152 ~19 1001 1 1001 all run function tid:dungeon/neon/select_zone_large_west
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-32 ~-1 ~-15 if blocks ~ ~128 ~ ~29 ~152 ~29 1001 1 1001 all run function tid:dungeon/neon/select_zone_square

#Ports
execute if score @s failed matches 1.. if score neon_ports value matches 1.. positioned ~-5 ~13 ~-3 if blocks ~ ~128 ~ ~2 ~134 ~7 1001 1 1001 all if blocks ~3 ~128 ~ ~3 ~134 ~7 1001 1 1033 all run function tid:dungeon/neon/select_port_west


