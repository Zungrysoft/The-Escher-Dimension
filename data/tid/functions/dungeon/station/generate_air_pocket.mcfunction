#Randomly decide the x and z value for the pocket
summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers ~16 ~16 1 16 false @e[name="scatter",type=area_effect_cloud]

#Randomly decide the y value
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter_y\""}
execute if predicate tid:random_50 as @e[name="scatter_y",type=area_effect_cloud] at @s run tp @s ~ ~16 ~
execute if predicate tid:random_50 as @e[name="scatter_y",type=area_effect_cloud] at @s run tp @s ~ ~8 ~
execute if predicate tid:random_50 as @e[name="scatter_y",type=area_effect_cloud] at @s run tp @s ~ ~4 ~
execute if predicate tid:random_50 as @e[name="scatter_y",type=area_effect_cloud] at @s run tp @s ~ ~2 ~
execute if predicate tid:random_50 as @e[name="scatter_y",type=area_effect_cloud] at @s run tp @s ~ ~1 ~
execute as @e[name="scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="scatter_y"] Pos[1]
kill @e[name="scatter_y"]

#Generate the air pocket
execute as @e[name="scatter"] at @s run function tid:dungeon/station/generate_air_pocket_pick

#Kill the air pocket generator
kill @e[name="scatter"]

