function tid:dungeon/intro/room_checks

#Diorite (Final room)
execute unless score @s failed matches 1.. if score intro_rooms value matches ..20 positioned ~-13 ~-2 ~-6 if blocks ~ ~-128 ~ ~12 ~-121 ~12 1001 129 1001 all run function tid:dungeon/intro/select_diorite

#Small
execute unless score @s failed matches 1.. if predicate tid:random_10 unless entity @s[tag=inside] positioned ~-11 ~-2 ~-5 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 129 1001 all run function tid:dungeon/intro/select_small
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-11 ~-2 ~-5 if blocks ~ ~-128 ~ ~10 ~-120 ~10 1001 129 1001 all run function tid:dungeon/intro/select_small

#Large
execute unless score @s failed matches 1.. if predicate tid:random_02 if score intro_large_rooms value matches 1.. unless entity @s[tag=large] positioned ~-19 ~-2 ~-9 if blocks ~ ~-128 ~ ~18 ~-114 ~18 1001 129 1001 all run function tid:dungeon/intro/select_large

#Stairs
execute unless score @s failed matches 1.. if predicate tid:random_04 unless entity @s[tag=stairs] positioned ~-11 ~-11 ~-2 if blocks ~ ~-128 ~ ~10 ~-116 ~4 1001 129 1001 all run function tid:dungeon/intro/select_stairs_east

#Bridge
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-17 ~-2 ~-3 if blocks ~ ~-128 ~ ~16 ~-119 ~6 1001 129 1001 all run function tid:dungeon/intro/select_bridge_west

#Chest
execute if score @s failed matches 1.. if predicate tid:random_05 positioned ~-5 ~-6 ~-2 if blocks ~ ~-128 ~ ~4 ~-121 ~4 1001 129 1001 all run function tid:dungeon/intro/select_chest
execute if score @s failed matches 1.. if block ~ ~ ~ air positioned ~-5 ~-6 ~-2 if blocks ~ ~-128 ~ ~4 ~-121 ~4 1001 129 1001 all run function tid:dungeon/intro/select_chest
