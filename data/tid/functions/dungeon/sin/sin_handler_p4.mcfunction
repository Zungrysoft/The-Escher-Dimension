#Generate Buildings
say MASTER PHASE 4

#Scatter some land around
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers 0 0 6 150 false @e[name="scatter"]
execute as @e[name="scatter"] at @s if blocks ~-3 ~-128 ~-3 ~3 ~-117 ~3 1 129 1 all if blocks ~-2 ~-1 ~-2 ~2 ~-1 ~2 1 155 1 all run function tid:dungeon/sin/generate_deco_medium_start
kill @e[name="scatter"]

#The roomcounter goes up automatically to keep things from going too long
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 2

execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run fill -5 183 -5 5 187 5 air replace bedrock
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run say DONE
execute if score @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries matches 200.. run scoreboard players set @s phase 5