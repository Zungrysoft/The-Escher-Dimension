#Tick the counter downwards
scoreboard players remove @s lifesteal 1

#Grant the effect if applicable
execute if score @s lifesteal matches 1.. if score @s damage_dealt matches 1.. run scoreboard players add @s pending_hunger 1
execute if score @s lifesteal matches 1.. if score @s damage_dealt matches 1.. run scoreboard players operation @s pending_hunger += @s lifesteal_amp
