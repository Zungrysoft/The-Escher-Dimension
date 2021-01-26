#Tick down shield curse remaining time
scoreboard players remove @s shield_curse 1

#Run the effects of the curse
execute if score @s shield_curse matches 1.. run function tid:gameplay/shield_curse_effect

#Reset the score that tracks shield use
scoreboard players reset @s use_shield
