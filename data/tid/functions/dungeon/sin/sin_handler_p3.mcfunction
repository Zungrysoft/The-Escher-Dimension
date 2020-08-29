#Generate Buildings
#say MASTER PHASE 3

#Scatter some land around
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers 0 0 6 150 false @e[name="scatter"]
execute at @e[name="scatter"] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"sin_north\""}
kill @e[name="scatter"]

#The roomcounter goes up automatically to keep things from going too long
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 2

execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run scoreboard players set @s phase 4
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run scoreboard players set @e[name="sin_roomcount"] tries 0