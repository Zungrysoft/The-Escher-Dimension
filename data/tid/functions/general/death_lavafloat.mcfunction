#This function is run in between checking if the player died and actually running the death function so that if the player died under lava, the barrels float to the top

#Determine if the player is under lava or not
scoreboard players set temp60 value 0
execute if block ~ ~2 ~ lava run scoreboard players set temp60 value 1

#Recurse upwards if they are
execute if score temp60 value matches 1 positioned ~ ~1 ~ run function tid:general/death_lavafloat

#Run the death_run function if they are not
execute if score temp60 value matches 0 run function tid:general/death_run

#Prevents tail-end shennanigans with globals
scoreboard players set temp60 value -1
