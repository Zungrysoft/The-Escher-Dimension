#Add the tag
tag @s add powered_up

#Increase the damage
execute store result entity @s damage double 3 run data get entity @s damage
