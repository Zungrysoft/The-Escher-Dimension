function tid:dungeon/brick/room_checks

#Cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_cross

#Tee
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_tee_south
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_tee_east
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_tee_west

#Turn
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_turn_south
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_turn_east

#Straight
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_straight_north

#End
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_end_south

#Up
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~7 ~138 ~7 1001 1 1001 all run function tid:dungeon/brick/select_up_north

#Down
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-6 ~-7 if blocks ~ ~128 ~ ~7 ~138 ~7 1001 1 1001 all run function tid:dungeon/brick/select_down_north
