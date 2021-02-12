#Count down
scoreboard players remove cave_count value 1

#Scatter position
tp @e[type=area_effect_cloud,tag=new,limit=1] -32 138 -32
#162 Max
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/chambers/cave_scatter_randomize

#Carve the cave
#execute positioned 0 140 0 at @e[type=area_effect_cloud,tag=new,limit=1,distance=..34] run function tid:dungeon/sin/chambers/cave
execute at @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/chambers/cave

#Recurse
execute if score cave_count value matches 1.. run function tid:dungeon/sin/chambers/cave_scatter_recurse
