#This advancement works by keeping 9 scoreboard values and ticking each one down by 1 each second
#Whenever a silverfish is killed, the last scoreboard value that is 0 or less gets set to 10
#If all 9 values are already set to greater than 0, then grant the advancement

#Subtract one kill
scoreboard players remove @s kill_silverfish 1

#Tracking variable for which item we've found
scoreboard players set item value 0

#Go through all of the values
execute if score sf1 value matches ..0 run scoreboard players set item value 1
execute if score sf2 value matches ..0 run scoreboard players set item value 2
execute if score sf3 value matches ..0 run scoreboard players set item value 3
execute if score sf4 value matches ..0 run scoreboard players set item value 4
execute if score sf5 value matches ..0 run scoreboard players set item value 5
execute if score sf6 value matches ..0 run scoreboard players set item value 6
execute if score sf7 value matches ..0 run scoreboard players set item value 7
execute if score sf8 value matches ..0 run scoreboard players set item value 8
execute if score sf9 value matches ..0 run scoreboard players set item value 9

#Use value to set scoreboard
execute if score item value matches 1 run scoreboard players set sf1 value 11
execute if score item value matches 2 run scoreboard players set sf2 value 11
execute if score item value matches 3 run scoreboard players set sf3 value 11
execute if score item value matches 4 run scoreboard players set sf4 value 11
execute if score item value matches 5 run scoreboard players set sf5 value 11
execute if score item value matches 6 run scoreboard players set sf6 value 11
execute if score item value matches 7 run scoreboard players set sf7 value 11
execute if score item value matches 8 run scoreboard players set sf8 value 11
execute if score item value matches 9 run scoreboard players set sf9 value 11

#If none of the values were found, that means the fifteenth and final silverfish was killed
execute if score item value matches 0 run advancement grant @a only tid:layer_1/kill_silverfish
