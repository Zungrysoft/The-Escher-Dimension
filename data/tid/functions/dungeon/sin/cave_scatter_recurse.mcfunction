#Count down
scoreboard players remove cave_count value 1

#Scatter position
tp @e[type=area_effect_cloud,tag=new,limit=1] -100 170 -100
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/cave_scatter_randomize

#Carve the cave
execute at @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/cave

#Recurse
execute if score cave_count value matches 1.. run function tid:dungeon/sin/cave_scatter_recurse
