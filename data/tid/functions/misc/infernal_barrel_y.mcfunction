#Pick a random number
scoreboard players set temp6 value 0
execute if predicate tid:random_50 run scoreboard players set temp6 value 1
execute if predicate tid:random_33 run scoreboard players set temp6 value 2

#Decide the next axis
execute if score temp6 value matches 0 positioned ~ ~1 ~ run function tid:misc/infernal_barrel_z
execute if score temp6 value matches 1 positioned ~ ~3 ~ run function tid:misc/infernal_barrel_z
execute if score temp6 value matches 2 positioned ~ ~5 ~ run function tid:misc/infernal_barrel_z
