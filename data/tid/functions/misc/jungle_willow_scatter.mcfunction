summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,CustomName:"\"willow_scatter\""}
spreadplayers 0 0 1 140 false @e[type=area_effect_cloud,name="willow_scatter"]
execute as @e[type=area_effect_cloud,name="willow_scatter"] at @s run function tid:misc/jungle_willow_check
kill @e[type=area_effect_cloud,name="willow_scatter"]

#Recurse
scoreboard players remove willow_count value 1
execute if score willow_count value matches 1.. run function tid:misc/jungle_willow_scatter