function tid:dungeon/brick/room_checks

#Cross
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_cross

#Tee
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_tee_east
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_tee_north
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_tee_south

#Turn
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_turn_east
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_turn_north

#Straight
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_straight_west

#End
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~133 ~7 1001 1 1001 all run function tid:dungeon/brick/select_end_east

#Up
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~7 ~138 ~7 1001 1 1001 all run function tid:dungeon/brick/select_up_west

#Down
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-7 ~-6 ~-3 if blocks ~ ~128 ~ ~7 ~138 ~7 1001 1 1001 all run function tid:dungeon/brick/select_down_west
