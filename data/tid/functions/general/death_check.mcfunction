#Init value
execute unless score @s deaths_prev matches 0.. run scoreboard players set @s deaths_prev 0
execute unless score @s deaths matches 0.. run scoreboard players set @s deaths 0

#Check
execute if score @s deaths > @s deaths_prev run function tid:general/death_run

#Update the score
scoreboard players operation @s deaths_prev = @s deaths
