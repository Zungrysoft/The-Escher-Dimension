#Deploy TNT at low health
execute store result score @s counter1 run data get entity @s Health
execute if score @s counter1 matches ..6 if entity @s[tag=tnt] run function tid:gameplay/ai_explosion_elemental_deploy
