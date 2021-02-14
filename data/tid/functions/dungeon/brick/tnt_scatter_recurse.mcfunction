#Count down
scoreboard players remove tnt_count value 1

#Scatter position
tp @e[type=area_effect_cloud,tag=new,limit=1] ~2 ~1 ~2
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/brick/tnt_scatter_randomize

#Decide what to build
scoreboard players set temp4 value 0
execute if predicate tid:random_06 run scoreboard players set temp4 value 1
execute if predicate tid:random_06 run scoreboard players set temp4 value 2

#Tnt
execute if score temp4 value matches 0 at @e[type=area_effect_cloud,tag=new,limit=1] if blocks ~-1 ~ ~-1 ~2 ~3 ~2 1001 1 1033 all run function tid:dungeon/brick/tnt_build_tnt

#Spawner
execute if score temp4 value matches 1 at @e[type=area_effect_cloud,tag=new,limit=1] if blocks ~-1 ~ ~-1 ~1 ~2 ~1 1001 1 1033 all run function tid:dungeon/brick/tnt_build_spawner

#Barrel
execute if score temp4 value matches 2 at @e[type=area_effect_cloud,tag=new,limit=1] if blocks ~-1 ~ ~-1 ~1 ~2 ~1 1001 1 1033 all run function tid:dungeon/brick/tnt_build_barrel

#Recurse
execute if score tnt_count value matches 1.. run function tid:dungeon/brick/tnt_scatter_recurse
