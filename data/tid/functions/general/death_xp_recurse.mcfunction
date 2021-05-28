#Grant the xp
xp add @s 7 points

#Count down
scoreboard players remove temp value 1

#Recurse
execute if score temp value matches 1.. run function tid:general/death_xp_recurse
