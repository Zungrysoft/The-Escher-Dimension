#Decide which direction this sewer will go in
#Do it first with no randomness, so a direction is guaranteed to be selected if space is available. Then do it again with randomness to vary the direction.
#1 is North, 2 is East, 3 is South, 4 is West, 5 is Down, and 6 is Up
scoreboard players set @s counter1 0
execute if blocks ~ ~124 ~ ~4 ~127 ~4 33 1 33 all run scoreboard players set @s counter1 5
execute if blocks ~-5 ~128 ~0 ~-1 ~131 ~4 33 1 33 all run scoreboard players set @s counter1 4
execute if blocks ~0 ~128 ~5 ~4 ~131 ~9 33 1 33 all run scoreboard players set @s counter1 3
execute if blocks ~5 ~128 ~0 ~9 ~131 ~4 33 1 33 all run scoreboard players set @s counter1 2
execute if blocks ~0 ~128 ~-5 ~4 ~131 ~-1 33 1 33 all run scoreboard players set @s counter1 1
execute if predicate tid:random_50 if blocks ~5 ~128 ~0 ~9 ~131 ~4 33 1 33 all run scoreboard players set @s counter1 2
execute if predicate tid:random_33 if blocks ~0 ~128 ~5 ~4 ~131 ~9 33 1 33 all run scoreboard players set @s counter1 3
execute if predicate tid:random_25 if blocks ~-5 ~128 ~0 ~-1 ~131 ~4 33 1 33 all run scoreboard players set @s counter1 4
execute if predicate tid:random_03 if blocks ~ ~124 ~ ~4 ~127 ~4 33 1 33 all run scoreboard players set @s counter1 5
execute if predicate tid:random_50 if score @s down matches 1 if blocks ~ ~132 ~ ~4 ~135 ~4 33 1 33 all run scoreboard players set @s counter1 6
execute if predicate tid:random_50 if score @s up matches 1 if blocks ~ ~124 ~ ~4 ~127 ~4 33 1 33 all run scoreboard players set @s counter1 5

#Determine what direction was picked and build the room off of it
execute if score @s counter1 matches 1 run function tid:dungeon/infernal/sewer_select_north
execute if score @s counter1 matches 2 run function tid:dungeon/infernal/sewer_select_east
execute if score @s counter1 matches 3 run function tid:dungeon/infernal/sewer_select_south
execute if score @s counter1 matches 4 run function tid:dungeon/infernal/sewer_select_west
execute if score @s counter1 matches 5 run function tid:dungeon/infernal/sewer_select_down
execute if score @s counter1 matches 6 run function tid:dungeon/infernal/sewer_select_up

#Decide whether to add some more directions at random
execute if predicate tid:random_03 if blocks ~0 ~128 ~-5 ~4 ~131 ~-1 33 1 33 all run function tid:dungeon/infernal/sewer_select_north
execute if predicate tid:random_03 if blocks ~5 ~128 ~0 ~9 ~131 ~4 33 1 33 all run function tid:dungeon/infernal/sewer_select_east
execute if predicate tid:random_03 if blocks ~0 ~128 ~5 ~4 ~131 ~9 33 1 33 all run function tid:dungeon/infernal/sewer_select_south
execute if predicate tid:random_03 if blocks ~-5 ~128 ~0 ~-1 ~131 ~4 33 1 33 all run function tid:dungeon/infernal/sewer_select_west
execute if predicate tid:random_05 if blocks ~ ~132 ~ ~4 ~135 ~4 33 1 33 all run function tid:dungeon/infernal/sewer_select_up

#Exterior Pipe Outflows
execute if predicate tid:random_08 if blocks ~0 ~128 ~-1 ~4 ~131 ~-1 1 1 1 all run function tid:dungeon/infernal/sewer_outflow_north
execute if predicate tid:random_08 if blocks ~5 ~128 ~0 ~5 ~131 ~4 1 1 1 all run function tid:dungeon/infernal/sewer_outflow_east
execute if predicate tid:random_08 if blocks ~0 ~128 ~5 ~4 ~131 ~5 1 1 1 all run function tid:dungeon/infernal/sewer_outflow_south
execute if predicate tid:random_08 if blocks ~-1 ~128 ~0 ~-1 ~131 ~4 1 1 1 all run function tid:dungeon/infernal/sewer_outflow_west
execute if predicate tid:random_05 if blocks ~0 ~127 ~0 ~4 ~127 ~4 1 1 1 all run scoreboard players set @s down 1

#We're done here
data modify entity @s CustomName set value '{"text":"sewer_section_finished"}'