summon minecraft:area_effect_cloud -100 21 -100 {Duration:99999999,Tags:["new"]}
execute as @e[type=area_effect_cloud,tag=new] at @s run function tid:dungeon/infernal/scatter_structure_run
