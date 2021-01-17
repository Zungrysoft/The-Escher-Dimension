#Set the number of base segments
scoreboard players set tanktower_segments value 4
execute if predicate tid:random_25 run scoreboard players add tanktower_segments value 2
execute if predicate tid:random_25 run scoreboard players add tanktower_segments value 2
execute if predicate tid:random_25 run scoreboard players add tanktower_segments value 3
execute if predicate tid:random_25 run scoreboard players add tanktower_segments value 5

#Start generating
execute positioned ~ ~5 ~ run function tid:dungeon/infernal/tanktower/base

