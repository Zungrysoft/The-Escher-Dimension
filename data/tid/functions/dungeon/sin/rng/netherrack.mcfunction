#Set the random value
scoreboard players set temp value 124
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

#Check random value against the y position
execute if score temp value > y_absolute value run setblock ~ ~ ~ netherrack
