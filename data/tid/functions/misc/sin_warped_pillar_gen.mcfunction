summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"height\""}
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="height",limit=1] at @s run tp @s ~ ~1 ~
execute if predicate tid:random_40 as @e[type=area_effect_cloud,name="height",limit=1] at @s run tp @s ~ ~2 ~
execute as @e[type=area_effect_cloud,name="height",limit=1] at @s run function tid:misc/sin_warped_pillar_build