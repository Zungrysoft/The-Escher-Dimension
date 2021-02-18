#War Pigs, Creepers, Skeletons

#Decide which monster gets summoned
scoreboard players set temp2 value 0
execute if predicate tid:random_33 run scoreboard players set temp2 value 1
execute if predicate tid:random_20 run scoreboard players set temp2 value 2

#Summon it
execute if score temp2 value matches 0 run function tid:custom_mobs/war_pig_1
execute if score temp2 value matches 1 run summon skeleton
execute if score temp2 value matches 2 run summon creeper
