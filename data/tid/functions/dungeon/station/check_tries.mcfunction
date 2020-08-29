scoreboard players add @s tries 1
scoreboard players set @s failed 0
execute if score @s tries matches 80.. run scoreboard players set @s failed 1
execute if score @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries matches 300.. run scoreboard players set @s failed 1
execute unless entity @e[name="station_roomcount",type=area_effect_cloud] run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s