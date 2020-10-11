#Count up the timer to shoot fireballs
execute unless entity @p[distance=0..12,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s counter1 0
scoreboard players add @s counter1 1

#Shoot
execute if score @s counter1 matches 10.. run function tid:gameplay/ai_fire_fountain_shoot
