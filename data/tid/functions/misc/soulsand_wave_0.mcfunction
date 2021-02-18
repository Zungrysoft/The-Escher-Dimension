#Wildcard

#Decide which monster gets summoned
scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players set temp2 value 1
execute if predicate tid:random_33 run scoreboard players set temp2 value 2
execute if predicate tid:random_25 run scoreboard players set temp2 value 3
execute if predicate tid:random_20 run scoreboard players set temp2 value 4
execute if predicate tid:random_15 run scoreboard players set temp2 value 5

#Summon it
execute if score temp2 value matches 0 run summon creeper
execute if score temp2 value matches 1 run summon zombie
execute if score temp2 value matches 2 run summon skeleton
execute if score temp2 value matches 3 run summon cave_spider
execute if score temp2 value matches 4 run summon blaze
execute if score temp2 value matches 5 run function tid:custom_mobs/war_pig_1
