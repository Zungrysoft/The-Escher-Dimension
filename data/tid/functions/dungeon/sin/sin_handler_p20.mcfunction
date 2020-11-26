#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="sin_north",sort=random] at @s run function tid:dungeon/sin/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_east",sort=random] at @s run function tid:dungeon/sin/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_south",sort=random] at @s run function tid:dungeon/sin/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_west",sort=random] at @s run function tid:dungeon/sin/check_west

execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_north",sort=random] at @s run function tid:dungeon/sin/chambers_check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_east",sort=random] at @s run function tid:dungeon/sin/chambers_check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_south",sort=random] at @s run function tid:dungeon/sin/chambers_check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_west",sort=random] at @s run function tid:dungeon/sin/chambers_check_west

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="sin_north"] unless entity @e[type=area_effect_cloud,name="sin_south"] unless entity @e[type=area_effect_cloud,name="sin_east"] unless entity @e[type=area_effect_cloud,name="sin_west"] unless entity @e[type=area_effect_cloud,name="sin_chambers_north"] unless entity @e[type=area_effect_cloud,name="sin_chambers_south"] unless entity @e[type=area_effect_cloud,name="sin_chambers_east"] unless entity @e[type=area_effect_cloud,name="sin_chambers_west"] run scoreboard players set sin_handler_phase value 30
