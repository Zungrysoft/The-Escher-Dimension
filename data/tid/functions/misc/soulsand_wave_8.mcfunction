#Skeletons and Blazes

#Decide which monster gets summoned
scoreboard players set temp2 value 0
execute if predicate tid:random_40 run scoreboard players set temp2 value 1

#Summon it
execute if score temp2 value matches 0 run summon skeleton
execute if score temp2 value matches 1 run summon blaze
