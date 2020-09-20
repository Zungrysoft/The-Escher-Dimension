#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="jungle_north",sort=random] at @s run function tid:dungeon/jungle/check_north
execute as @e[type=minecraft:area_effect_cloud,name="jungle_east",sort=random] at @s run function tid:dungeon/jungle/check_east
execute as @e[type=minecraft:area_effect_cloud,name="jungle_south",sort=random] at @s run function tid:dungeon/jungle/check_south
execute as @e[type=minecraft:area_effect_cloud,name="jungle_west",sort=random] at @s run function tid:dungeon/jungle/check_west

execute as @e[type=minecraft:area_effect_cloud,name="jungle_junction_north",sort=random] at @s run function tid:dungeon/jungle/junction_check_north
execute as @e[type=minecraft:area_effect_cloud,name="jungle_junction_east",sort=random] at @s run function tid:dungeon/jungle/junction_check_east
execute as @e[type=minecraft:area_effect_cloud,name="jungle_junction_south",sort=random] at @s run function tid:dungeon/jungle/junction_check_south
execute as @e[type=minecraft:area_effect_cloud,name="jungle_junction_west",sort=random] at @s run function tid:dungeon/jungle/junction_check_west

execute as @e[type=minecraft:area_effect_cloud,name="jungle_tower_north",sort=random] at @s run function tid:dungeon/jungle/tower_check_north
execute as @e[type=minecraft:area_effect_cloud,name="jungle_tower_east",sort=random] at @s run function tid:dungeon/jungle/tower_check_east
execute as @e[type=minecraft:area_effect_cloud,name="jungle_tower_south",sort=random] at @s run function tid:dungeon/jungle/tower_check_south
execute as @e[type=minecraft:area_effect_cloud,name="jungle_tower_west",sort=random] at @s run function tid:dungeon/jungle/tower_check_west

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="jungle_north"] unless entity @e[type=area_effect_cloud,name="jungle_south"] unless entity @e[type=area_effect_cloud,name="jungle_east"] unless entity @e[type=area_effect_cloud,name="jungle_west"] unless entity @e[type=area_effect_cloud,name="jungle_junction_north"] unless entity @e[type=area_effect_cloud,name="jungle_junction_south"] unless entity @e[type=area_effect_cloud,name="jungle_junction_east"] unless entity @e[type=area_effect_cloud,name="jungle_junction_west"] unless entity @e[type=area_effect_cloud,name="jungle_tower_north"] unless entity @e[type=area_effect_cloud,name="jungle_tower_south"] unless entity @e[type=area_effect_cloud,name="jungle_tower_east"] unless entity @e[type=area_effect_cloud,name="jungle_tower_west"] run scoreboard players set jungle_handler_phase value 30