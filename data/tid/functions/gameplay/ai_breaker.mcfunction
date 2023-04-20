#If the mob has been damaged since the previous frame, reset the attack time
execute store result score temp value run data get entity @s Health
execute unless score @s up = temp value run scoreboard players set @s counter1 25
execute unless score @s up = temp value run scoreboard players set @s phase 0
execute store result score @s up run data get entity @s Health

#Count up the attack time
scoreboard players add @s counter1 1

#Only allow one breaker attack to run at a time
execute if score @s phase matches 0 if entity @e[type=minecraft:area_effect_cloud,tag=tid_breaker_marker] run scoreboard players set @s counter1 0

#If the attack is ready to shoot, make sure the targeted player is within range
execute if score @s counter1 matches 60.. unless entity @p[distance=2..12,gamemode=survival] run scoreboard players set @s counter1 0

#If the attack is ready to shoot, do a raytrace to make sure we can actually see the target
execute if score @s counter1 matches 60.. run function tid:gameplay/raytrace_nearest
execute if score @s counter1 matches 60.. if score raytrace_result value matches 1 run scoreboard players set @s counter1 0

#If the attack is ready to shoot, warn the player with particles
execute if score @s counter1 matches 60.. unless score @s phase matches 1 run function tid:gameplay/ai_breaker_charge

#Launch the child if fully charged
execute if score @s counter1 matches 10.. if score @s phase matches 1 run function tid:gameplay/ai_breaker_launch_projectile
