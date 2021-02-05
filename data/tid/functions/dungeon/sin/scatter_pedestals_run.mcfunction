#Scatter
spreadplayers 0 0 1 100 under 200 false @s

#Generate
execute at @s[type=area_effect_cloud,name="scatter"] if block ~ ~-1 ~ basalt positioned ~-5 ~ ~-5 if blocks ~ ~-128 ~ ~8 ~-124 ~8 1001 1 1001 all run function tid:dungeon/sin/select_pedestal

#Remove one from the counter and recurse
scoreboard players remove pedestal_score value 1
execute if score pedestal_score value matches 1.. run function tid:dungeon/sin/scatter_pedestals_run
