#Pick a random number
scoreboard players set temp7 value 0
execute if predicate tid:random_50 run scoreboard players set temp7 value 1
execute if predicate tid:random_33 run scoreboard players set temp7 value 2
execute if predicate tid:random_25 run scoreboard players set temp7 value 3
execute if predicate tid:random_20 run scoreboard players set temp7 value 4
execute if predicate tid:random_15 run scoreboard players set temp7 value 5

#Decide the next axis
execute if score temp7 value matches 0 positioned ~ ~ ~3 run function tid:misc/infernal_barrel_edit
execute if score temp7 value matches 1 positioned ~ ~ ~4 run function tid:misc/infernal_barrel_edit
execute if score temp7 value matches 2 positioned ~ ~ ~5 run function tid:misc/infernal_barrel_edit
execute if score temp7 value matches 3 positioned ~ ~ ~9 run function tid:misc/infernal_barrel_edit
execute if score temp7 value matches 4 positioned ~ ~ ~10 run function tid:misc/infernal_barrel_edit
execute if score temp7 value matches 5 positioned ~ ~ ~11 run function tid:misc/infernal_barrel_edit
