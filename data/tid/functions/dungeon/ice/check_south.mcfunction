function tid:dungeon/ice/room_checks

#Platform
execute unless score @s failed matches 1.. if predicate tid:random_20 if entity @s[tag=platform] positioned ~-1 ~-1 ~0 if blocks ~ ~128 ~1 ~3 ~130 ~3 1001 1 1001 all run function tid:dungeon/ice/select_platform
execute unless score @s failed matches 1.. if predicate tid:random_04 unless entity @s[tag=platform] positioned ~-1 ~-1 ~1 if blocks ~ ~128 ~ ~3 ~130 ~3 1001 1 1001 all run function tid:dungeon/ice/select_platform

#Tower
execute unless score @s failed matches 1.. if predicate tid:random_10 unless entity @s[tag=tower] positioned ~-6 ~-1 ~1 if blocks ~ ~128 ~ ~13 ~154 ~13 1001 1 1001 all run function tid:dungeon/ice/select_tower
