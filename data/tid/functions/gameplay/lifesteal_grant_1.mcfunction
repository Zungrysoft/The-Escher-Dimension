#Grant the effect if the player doesn't have the effect
execute unless score @s lifesteal matches 1.. run scoreboard players set @s lifesteal_amp 1
execute unless score @s lifesteal matches 1.. run scoreboard players set @s lifesteal 9600

#Grant the effect if the player has a weaker version of the effect
execute unless score @s lifesteal_amp matches 2.. run scoreboard players set @s lifesteal_amp 1
execute unless score @s lifesteal_amp matches 2.. run scoreboard players set @s lifesteal 9600
