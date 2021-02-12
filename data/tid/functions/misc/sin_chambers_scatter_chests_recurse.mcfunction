#Spread the treasure around
spreadplayers 0 0 1 100 under 134 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/sin_chambers_scatter_chests_place

#Remove one from score and recurse
scoreboard players remove temp value 1
execute if score temp value matches 1.. run function tid:misc/sin_chambers_scatter_chests_recurse
