#Edit the revive phase and reset charge time
scoreboard players set @s phase 0
scoreboard players set @s counter1 0

#Do the revive
execute as @e[type=area_effect_cloud,tag=grave,sort=nearest,distance=0..7,limit=1] at @s run function tid:gameplay/ai_grave_revive
