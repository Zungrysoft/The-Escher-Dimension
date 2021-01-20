#This function gets run on all nearby living entities
#If any of them are on fire, set temp2 so we know this weapon is allowed to function
execute store result score temp2 value run data get entity @s Fire
execute if score temp2 value matches 1.. run scoreboard players set temp value 1
