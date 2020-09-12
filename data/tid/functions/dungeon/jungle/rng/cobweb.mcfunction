#Determine jungliness score
scoreboard players operation calc value = xcount value
scoreboard players operation calc value += zcount value

#Check whether to place a cobweb
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16
execute if predicate tid:random_50 run scoreboard players add temp value 32
execute if predicate tid:random_50 run scoreboard players add temp value 64
execute if predicate tid:random_50 run scoreboard players add temp value 128

#Check whether to do the conversion
execute if score temp value < calc value run setblock ~ ~ ~ cobweb

