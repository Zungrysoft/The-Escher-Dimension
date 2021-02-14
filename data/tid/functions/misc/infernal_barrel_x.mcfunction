#These functions pick a random barrel in the infernal secret and change its loot table to the secret table

#Pick a random number
scoreboard players set temp5 value 0
execute if predicate tid:random_50 run scoreboard players set temp5 value 1
execute if predicate tid:random_33 run scoreboard players set temp5 value 2
execute if predicate tid:random_25 run scoreboard players set temp5 value 3
execute if predicate tid:random_20 run scoreboard players set temp5 value 4
execute if predicate tid:random_15 run scoreboard players set temp5 value 5
execute if predicate tid:random_15 run scoreboard players set temp5 value 6
execute if predicate tid:random_10 run scoreboard players set temp5 value 7

#Decide the next axis
execute if score temp5 value matches 0 positioned ~0 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 1 positioned ~3 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 2 positioned ~4 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 3 positioned ~7 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 4 positioned ~8 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 5 positioned ~11 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 6 positioned ~12 ~ ~ run function tid:misc/infernal_barrel_y
execute if score temp5 value matches 7 positioned ~15 ~ ~ run function tid:misc/infernal_barrel_y
