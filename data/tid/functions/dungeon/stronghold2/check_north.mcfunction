function tid:dungeon/stronghold2/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-6 ~-1 ~-13 if blocks ~ ~128 ~ ~12 ~135 ~12 1001 1 1001 all run function tid:dungeon/stronghold2/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_06 positioned ~-2 ~-1 ~-9 if blocks ~ ~128 ~ ~4 ~133 ~8 1001 1 1001 all run function tid:dungeon/stronghold2/select_hall_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-2 ~-1 ~-5 if blocks ~ ~128 ~ ~4 ~133 ~4 1001 1 1001 all run function tid:dungeon/stronghold2/select_junction_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-2 ~-7 ~-11 if blocks ~ ~128 ~ ~4 ~139 ~10 1001 1 1001 all run function tid:dungeon/stronghold2/select_stairwell_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-6 ~-1 ~-11 if blocks ~ ~128 ~ ~8 ~133 ~10 1001 1 1001 all run function tid:dungeon/stronghold2/select_jail_north
execute unless score @s failed matches 1.. if predicate tid:random_10 if score stronghold2_spires value matches ..0 if score @s x matches -35..38 if score @s z matches ..-97 positioned ~-7 ~-4 ~-15 if blocks ~ ~128 ~ ~14 ~154 ~14 1001 1 1001 all if blocks ~ ~155 ~ ~14 ~181 ~14 1001 1 1001 all run function tid:dungeon/stronghold2/select_spire

execute if score @s failed matches 1.. if predicate tid:random_15 positioned ~-3 ~-3 ~-7 if blocks ~ ~128 ~ ~6 ~137 ~6 1001 1 1001 all run function tid:dungeon/stronghold2/select_end
