#This function gets run on all nearby living entities
#If any of them are on fire, set temp2 so we know this weapon gets an attack bonus
execute store result score temp value run data get entity @s Fire
execute if score temp value matches 1.. run scoreboard players add igneous value 1
