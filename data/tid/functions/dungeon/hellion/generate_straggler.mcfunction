summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,CustomName:"\"scatter\""}
spreadplayers 0 0 1 50 false @e[type=area_effect_cloud,name="scatter"]
execute as @e[type=area_effect_cloud,name="scatter"] at @s positioned ~-1 ~10 ~-3 if blocks ~ ~-128 ~ ~2 ~-124 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_outside
kill @e[type=area_effect_cloud,name="scatter"]