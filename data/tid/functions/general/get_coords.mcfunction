summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["coords"]}
execute as @e[type=area_effect_cloud,tag=coords] at @s run function tid:general/get_coords_store
