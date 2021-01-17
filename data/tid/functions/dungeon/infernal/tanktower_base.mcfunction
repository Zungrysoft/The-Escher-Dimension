#Subtract from number of pieces
scoreboard players remove tanktower_segments value 1

#Decide which direction to generate in
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2

#Don't generate anywhere if we're out of pieces
execute if score tanktower_segments value matches ..0 run scoreboard players set temp value 99

#Sometimes just stop generating so we can branch off at a different piece
execute if predicate tid:random_05 if score tanktower_segments value matches ..4 run scoreboard players set temp value 99
execute if predicate tid:random_15 if score tanktower_segments value matches ..2 run scoreboard players set temp value 99

#Add next piece
execute if score temp value matches 0 positioned ~7 ~ ~ if blocks ~ ~128 ~ ~6 ~134 ~6 1001 1 1001 all run function tid:dungeon/infernal/tanktower_base
execute if score temp value matches 1 positioned ~ ~ ~7 if blocks ~ ~128 ~ ~6 ~134 ~6 1001 1 1001 all run function tid:dungeon/infernal/tanktower_base
execute if score temp value matches 2 positioned ~-7 ~ ~ if blocks ~ ~128 ~ ~6 ~134 ~6 1001 1 1001 all run function tid:dungeon/infernal/tanktower_base
execute if score temp value matches 3 positioned ~ ~ ~-7 if blocks ~ ~128 ~ ~6 ~134 ~6 1001 1 1001 all run function tid:dungeon/infernal/tanktower_base

#Build Tower
fill ~-1 ~-14 ~-1 ~7 ~-1 ~7 polished_andesite
fill ~-1 255 ~-1 ~7 255 ~7 polished_andesite replace black_concrete
fill ~ ~114 ~ ~6 ~127 ~6 blue_wool
scoreboard players set tanktower_mode value 0
execute if predicate tid:random_40 run scoreboard players set tanktower_mode value 1
execute if predicate tid:random_20 run scoreboard players set tanktower_mode value 2
function tid:dungeon/infernal/tanktower_segment
