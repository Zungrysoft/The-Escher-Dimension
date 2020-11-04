function tid:dungeon/stronghold2/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-6 ~-1 ~1 if blocks ~ ~128 ~ ~12 ~135 ~12 1001 1 1001 all run function tid:dungeon/stronghold2/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_06 positioned ~-2 ~-1 ~1 if blocks ~ ~128 ~ ~4 ~133 ~8 1001 1 1001 all run function tid:dungeon/stronghold2/select_hall_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~1 if blocks ~ ~128 ~ ~4 ~133 ~4 1001 1 1001 all run function tid:dungeon/stronghold2/select_junction_south
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-2 ~-1 ~1 if blocks ~ ~128 ~ ~4 ~139 ~10 1001 1 1001 all run function tid:dungeon/stronghold2/select_stairwell_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-6 ~-1 ~1 if blocks ~ ~128 ~ ~8 ~133 ~10 1001 1 1001 all run function tid:dungeon/stronghold2/select_jail_north

execute if score @s failed matches 1.. if predicate tid:random_15 positioned ~-3 ~-3 ~1 if blocks ~ ~128 ~ ~6 ~137 ~6 1001 1 1001 all run function tid:dungeon/stronghold2/select_end
