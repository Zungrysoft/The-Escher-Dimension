summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,CustomName:"\"scatter\""}
spreadplayers 0 0 1 50 false @e[type=area_effect_cloud,name="scatter"]
execute as @e[type=area_effect_cloud,name="scatter"] at @s positioned ~-2 ~5 ~-5 if blocks ~ ~-128 ~ ~4 ~-122 ~4 1001 129 1001 all run function tid:dungeon/jungle/select_junction_north
kill @e[type=area_effect_cloud,name="scatter"]