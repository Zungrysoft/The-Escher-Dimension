#Decide the pillar height
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1
execute if predicate tid:random_33 run scoreboard players set temp value 2
execute if predicate tid:random_20 run scoreboard players set temp value 3

#If the block here is not granite, don't do anything
execute unless block ~ ~ ~ granite run scoreboard players set temp value 0

#Build the pillar
execute if score temp value matches 1 run fill ~ ~1 ~ ~ ~1 ~ granite replace air
execute if score temp value matches 2 run fill ~ ~1 ~ ~ ~2 ~ granite replace air
execute if score temp value matches 3 run fill ~ ~1 ~ ~ ~3 ~ granite replace air