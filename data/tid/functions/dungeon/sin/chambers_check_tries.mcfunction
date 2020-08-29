scoreboard players add @s tries 1
scoreboard players set @s failed 0
execute if score @s tries matches 20.. run scoreboard players set @s failed 1
execute if score @e[name="sin_chambers_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run scoreboard players set @s failed 1
execute unless entity @e[name="sin_chambers_roomcount",type=area_effect_cloud] run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s