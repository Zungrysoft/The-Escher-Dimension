#Start Generating more land on top of the main land
#say MASTER PHASE 2

#Scatter some land around
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers 0 0 0 150 false @e[name="scatter"]
execute as @e[name="scatter"] at @s run function tid:dungeon/sin/generate_starting_platform

#The roomcounter goes up automatically to keep things from going too long
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 2

execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run kill @e[type=area_effect_cloud,name="sin_plat_small_north"]
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run kill @e[type=area_effect_cloud,name="sin_plat_small_south"]
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run kill @e[type=area_effect_cloud,name="sin_plat_small_east"]
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run kill @e[type=area_effect_cloud,name="sin_plat_small_west"]
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run scoreboard players set @s phase 3
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run scoreboard players set @e[name="sin_roomcount"] tries 0