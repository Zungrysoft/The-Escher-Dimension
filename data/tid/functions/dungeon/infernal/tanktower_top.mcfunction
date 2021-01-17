#Decide if we should continue
scoreboard players set temp value 0
execute if predicate tid:random_50 unless block ~-1 ~7 ~ air run scoreboard players set temp value 1
execute if predicate tid:random_50 unless block ~ ~7 ~-1 air run scoreboard players set temp value 1
execute if predicate tid:random_50 unless block ~7 ~7 ~ air run scoreboard players set temp value 1
execute if predicate tid:random_50 unless block ~ ~7 ~7 air run scoreboard players set temp value 1

#Set the mode to continue with
scoreboard players set tanktower_mode value 5
execute if score temp value matches 1 run scoreboard players set tanktower_mode value 0
