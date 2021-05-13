function tid:dungeon/neon/halls_room_checks

#Rooms
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-8 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~136 ~7 1001 1 1001 all run function tid:dungeon/neon/select_halls_cross
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-10 ~-1 ~-1 if blocks ~ ~128 ~ ~9 ~136 ~3 1001 1 1001 all run function tid:dungeon/neon/select_halls_straight_west

#End
execute if score @s failed matches 1.. if score neon_halls_ends value matches 1.. positioned ~-4 ~-1 ~-1 if blocks ~ ~128 ~ ~3 ~132 ~3 1001 1 1001 all run function tid:dungeon/neon/select_halls_end_west
