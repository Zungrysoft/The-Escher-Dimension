# Kill after certain time
scoreboard players add @s counter1 1
execute if score @s counter1 matches 40.. run kill @e[type=minecraft:area_effect_cloud,tag=tid_breaker_marker]
execute if score @s counter1 matches 40.. run kill @s
particle flame