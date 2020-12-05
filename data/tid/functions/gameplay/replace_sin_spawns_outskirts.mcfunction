#Pick a random number between 0 and 8 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Wither Skeleton
execute if score temp value matches 0 run summon wither_skeleton
#Hoglin
execute if score temp value matches 1..2 run summon hoglin ~ ~ ~ {Tags:["keep"]}
#Blaze
execute if score temp value matches 3..4 run summon blaze
#Otherwise, spawn nothing
