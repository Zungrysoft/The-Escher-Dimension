summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}

execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~1 ~ ~
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~2 ~ ~
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~4 ~ ~

execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~1
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~2
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~4

execute at @e[type=area_effect_cloud,name="scatter"] run setblock ~ ~ ~ smooth_quartz
execute if predicate tid:random_50 at @e[type=area_effect_cloud,name="scatter"] run fill ~ ~ ~ ~1 ~ ~1 smooth_quartz

kill @e[type=area_effect_cloud,name="scatter"]