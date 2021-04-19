function tid:dungeon/ice/room_checks

#Platform
execute unless score @s failed matches 1.. if predicate tid:random_20 if entity @s[tag=platform] positioned ~-3 ~-1 ~-1 if blocks ~ ~128 ~ ~2 ~130 ~3 1001 1 1001 all run function tid:dungeon/ice/select_platform
execute unless score @s failed matches 1.. if predicate tid:random_04 unless entity @s[tag=platform] positioned ~-4 ~-1 ~-1 if blocks ~ ~128 ~ ~3 ~130 ~3 1001 1 1001 all run function tid:dungeon/ice/select_platform

#Tower
execute unless score @s failed matches 1.. if predicate tid:random_10 unless entity @s[tag=tower] positioned ~-14 ~-10 ~-6 if blocks ~ ~128 ~ ~13 ~154 ~13 1001 1 1001 all run function tid:dungeon/ice/select_tower

#Arena
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-26 ~-3 ~-12 unless entity @e[name="ice_arena_marker",distance=0..30] if blocks ~ ~128 ~ ~25 ~138 ~25 1001 1 1001 all run function tid:dungeon/ice/select_arena

#Other rooms
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-12 ~-2 ~-5 if blocks ~ ~128 ~ ~11 ~134 ~11 1001 1 1001 all run function tid:dungeon/ice/select_room
execute unless score @s failed matches 1.. if predicate tid:random_07 positioned ~-9 ~-2 ~-1 if blocks ~ ~128 ~ ~8 ~131 ~3 1001 1 1001 all run function tid:dungeon/ice/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-6 ~-1 ~-1 if blocks ~ ~128 ~ ~5 ~133 ~3 1001 1 1001 all run function tid:dungeon/ice/select_stairs_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-6 ~-4 ~-1 if blocks ~ ~128 ~ ~5 ~133 ~3 1001 1 1001 all run function tid:dungeon/ice/select_stairs_east
