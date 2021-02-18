#Curse nearby monsters with undeath
execute as @e[type=#tid:priest_reviveable,distance=0..15,tag=!cursed,tag=!priest] at @s run function tid:gameplay/ai_priest_curse

#If it is not angry at anything, reset the revive time
execute unless entity @a[distance=0..15] run scoreboard players set @s counter1 0
execute unless entity @a[distance=0..15] run scoreboard players set @s phase 0

#If there are no nearby graves, reset revive time
execute unless entity @e[type=area_effect_cloud,tag=grave,distance=0..7] run scoreboard players set @s counter1 0
execute unless entity @e[type=area_effect_cloud,tag=grave,distance=0..7] run scoreboard players set @s phase 0

#If the mob has been damaged since the previous frame, reset the revive time
execute store result score temp value run data get entity @s Health
execute unless score @s up = temp value run scoreboard players set @s counter1 0
execute unless score @s up = temp value run scoreboard players set @s phase 0
execute store result score @s up run data get entity @s Health

#Count up the revive time
scoreboard players add @s counter1 1

#If the revive is ready to go, warn the player with particles
execute if score @s counter1 matches 80.. if score @s phase matches 0 run function tid:gameplay/ai_priest_charge

#Do the revive if fully charged
execute if score @s counter1 matches 20.. if score @s phase matches 1 run function tid:gameplay/ai_priest_revive
