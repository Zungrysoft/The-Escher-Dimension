#Delete the command block
fill ~ ~1 ~ ~ ~ ~ red_nether_bricks

#Decide whether to put in a chest
scoreboard players set temp value 0
execute if score station_secrets value matches 0 if predicate tid:random_70 run scoreboard players set temp value 1
execute if score station_secrets value matches 1 if predicate tid:random_25 run scoreboard players set temp value 1
execute if predicate tid:random_05 run scoreboard players set temp value 1
execute if score temp value matches 1 run function tid:misc/station_buried_chest_generate