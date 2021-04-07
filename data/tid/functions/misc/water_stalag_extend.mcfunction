#Set the block
execute if block ~ ~ ~ water run setblock ~ ~ ~ prismarine

#Random chance to continue generating
scoreboard players set temp3 value 0
execute if predicate tid:random_50 run scoreboard players set temp3 value 1

#Chance increases with more adjacent blocks
execute if predicate tid:random_60 positioned ~1 ~2 ~ unless block ~ ~ ~ water run scoreboard players set temp3 value 1
execute if predicate tid:random_60 positioned ~ ~2 ~1 unless block ~ ~ ~ water run scoreboard players set temp3 value 1
execute if predicate tid:random_60 positioned ~-1 ~2 ~ unless block ~ ~ ~ water run scoreboard players set temp3 value 1
execute if predicate tid:random_60 positioned ~ ~2 ~-1 unless block ~ ~ ~ water run scoreboard players set temp3 value 1

#Make sure the above block is water
execute unless block ~ ~1 ~ water run scoreboard players set temp3 value 0

#Run the extender
execute if score temp3 value matches 1 positioned ~ ~1 ~ run function tid:misc/water_stalag_extend

#Indents
scoreboard players set temp4 value 0
execute unless score temp3 value matches 1 if predicate tid:random_33 run scoreboard players set temp4 value 1
execute if score temp4 value matches 1 if block ~1 ~1 ~ prismarine run scoreboard players set temp4 value 2
execute if score temp4 value matches 1 if block ~-1 ~1 ~ prismarine run scoreboard players set temp4 value 2
execute if score temp4 value matches 1 if block ~ ~1 ~1 prismarine run scoreboard players set temp4 value 2
execute if score temp4 value matches 1 if block ~ ~1 ~-1 prismarine run scoreboard players set temp4 value 2
execute if score temp4 value matches 2 if block ~ ~2 ~ seagrass run scoreboard players set temp4 value 0
execute if score temp4 value matches 2 run setblock ~ ~1 ~ water

#Seagrass on top
execute unless score temp3 value matches 1 if predicate tid:random_60 if block ~ ~1 ~ water run setblock ~ ~1 ~ seagrass
