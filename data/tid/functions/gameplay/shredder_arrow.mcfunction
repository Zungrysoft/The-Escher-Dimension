#Add the damage if it hasn't been found
execute unless entity @s[tag=powered] run execute store result entity @s damage double 6 run data get entity @s damage
execute unless entity @s[tag=powered] run tag @s add powered

#Reduce the damage after each frame
execute store result entity @s damage double 0.6 run data get entity @s damage
