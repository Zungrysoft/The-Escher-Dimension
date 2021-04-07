function tid:dungeon/ice/room_checks

#Platform
execute unless score @s failed matches 1.. if predicate tid:random_20 if entity @s[tag=platform] positioned ~-1 ~-1 ~-3 if blocks ~ ~128 ~ ~3 ~130 ~2 1001 1 1001 all run function tid:dungeon/ice/select_platform
execute unless score @s failed matches 1.. if predicate tid:random_04 unless entity @s[tag=platform] positioned ~-1 ~-1 ~-4 if blocks ~ ~128 ~ ~3 ~130 ~3 1001 1 1001 all run function tid:dungeon/ice/select_platform

#Tower
execute unless score @s failed matches 1.. if predicate tid:random_10 unless entity @s[tag=tower] positioned ~-6 ~-7 ~-14 if blocks ~ ~128 ~ ~13 ~154 ~13 1001 1 1001 all run function tid:dungeon/ice/select_tower

#Other rooms
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-5 ~-2 ~-12 if blocks ~ ~128 ~ ~11 ~134 ~11 1001 1 1001 all run function tid:dungeon/ice/select_room
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-1 ~-2 ~-9 if blocks ~ ~128 ~ ~3 ~131 ~8 1001 1 1001 all run function tid:dungeon/ice/select_bridge_north
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-1 ~-1 ~-6 if blocks ~ ~128 ~ ~3 ~133 ~5 1001 1 1001 all run function tid:dungeon/ice/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-1 ~-4 ~-6 if blocks ~ ~128 ~ ~3 ~133 ~5 1001 1 1001 all run function tid:dungeon/ice/select_stairs_south
