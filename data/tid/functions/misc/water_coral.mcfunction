#Decide on the type
scoreboard players set type value 0
execute if predicate tid:random_50 run scoreboard players set type value 1
execute if predicate tid:random_33 run scoreboard players set type value 2
execute if predicate tid:random_25 run scoreboard players set type value 3
execute if predicate tid:random_20 run scoreboard players set type value 4

#Decide on the height
scoreboard players set height value 0
execute if predicate tid:random_50 run scoreboard players add height value 1
execute if predicate tid:random_50 run scoreboard players add height value 2
execute if predicate tid:random_33 run scoreboard players add height value 2

#Build the first few blocks
execute if score height value matches 5.. positioned ~ ~8 ~ run function tid:misc/water_coral_block
execute if score height value matches 4.. positioned ~ ~7 ~ run function tid:misc/water_coral_block
execute if score height value matches 3.. positioned ~ ~6 ~ run function tid:misc/water_coral_block
execute if score height value matches 2.. positioned ~ ~5 ~ run function tid:misc/water_coral_block
execute if score height value matches 1.. positioned ~ ~4 ~ run function tid:misc/water_coral_block
execute positioned ~ ~3 ~ run function tid:misc/water_coral_block
execute positioned ~ ~2 ~ run function tid:misc/water_coral_block
execute positioned ~ ~1 ~ run function tid:misc/water_coral_block

#Scatter coral nearby
function tid:misc/water_coral_scatter_x
