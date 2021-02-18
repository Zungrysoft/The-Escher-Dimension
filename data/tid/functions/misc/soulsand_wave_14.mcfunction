#Blazes and Zombies

#Decide which monster gets summoned
scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players set temp2 value 1

#Summon it
execute if score temp2 value matches 0 run summon blaze
execute if score temp2 value matches 1 run summon zombie
execute if score temp2 value matches 1 run summon zombie ~ ~ ~0.1
