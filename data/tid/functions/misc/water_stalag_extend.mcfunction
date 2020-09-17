#Set the block
execute if block ~ ~ ~ water run setblock ~ ~ ~ prismarine

#Random chance to continue generating
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1

#Chance increases with more adjacent blocks
execute if predicate tid:random_60 positioned ~1 ~2 ~ unless block ~ ~ ~ water run scoreboard players set temp value 1
execute if predicate tid:random_60 positioned ~ ~2 ~1 unless block ~ ~ ~ water run scoreboard players set temp value 1
execute if predicate tid:random_60 positioned ~-1 ~2 ~ unless block ~ ~ ~ water run scoreboard players set temp value 1
execute if predicate tid:random_60 positioned ~ ~2 ~-1 unless block ~ ~ ~ water run scoreboard players set temp value 1

#Make sure the above block is water
execute unless block ~ ~1 ~ water run scoreboard players set temp value 0

#Run the extender
execute if score temp value matches 1 positioned ~ ~1 ~ run function tid:misc/water_stalag_extend