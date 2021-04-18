function tid:dungeon/intro/room_checks

#Diorite (Final room)
execute unless score @s failed matches 1.. if score intro_rooms value matches ..20 positioned ~-6 ~-2 ~-13 if blocks ~ ~-128 ~ ~12 ~-121 ~12 1001 129 1001 all run function tid:dungeon/intro/select_diorite

#Small
execute unless score @s failed matches 1.. if predicate tid:random_10 unless entity @s[tag=inside] positioned ~-5 ~-2 ~-11 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 129 1001 all run function tid:dungeon/intro/select_small
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-5 ~-2 ~-11 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 129 1001 all run function tid:dungeon/intro/select_small

#Large
execute unless score @s failed matches 1.. if predicate tid:random_01 if score intro_large_rooms value matches 1.. unless entity @s[tag=large] positioned ~-9 ~-2 ~-19 if blocks ~ ~-128 ~ ~18 ~-114 ~18 1001 129 1001 all run function tid:dungeon/intro/select_large

#Stairs
execute unless score @s failed matches 1.. if predicate tid:random_04 unless entity @s[tag=stairs] positioned ~-2 ~-11 ~-11 if blocks ~ ~-128 ~ ~4 ~-116 ~10 1001 129 1001 all run function tid:dungeon/intro/select_stairs_south

#Bridge
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-3 ~-2 ~-17 if blocks ~ ~-128 ~ ~6 ~-119 ~16 1001 129 1001 all run function tid:dungeon/intro/select_bridge_north

#Chest
execute if score @s failed matches 1.. if predicate tid:random_05 positioned ~-2 ~-6 ~-5 if blocks ~ ~-128 ~ ~4 ~-121 ~4 1001 129 1001 all run function tid:dungeon/intro/select_chest
execute if score @s failed matches 1.. if block ~ ~ ~ air positioned ~-2 ~-6 ~-5 if blocks ~ ~-128 ~ ~4 ~-121 ~4 1001 129 1001 all run function tid:dungeon/intro/select_chest
