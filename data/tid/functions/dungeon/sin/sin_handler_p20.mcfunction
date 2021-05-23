#Run the dungeon generation

#Sin City
execute as @e[type=minecraft:area_effect_cloud,name="sin_up",sort=random] at @s run function tid:dungeon/sin/check_up
execute as @e[type=minecraft:area_effect_cloud,name="sin_down",sort=random] at @s run function tid:dungeon/sin/check_down

execute as @e[type=minecraft:area_effect_cloud,name="sin_north",sort=random] at @s run function tid:dungeon/sin/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_east",sort=random] at @s run function tid:dungeon/sin/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_south",sort=random] at @s run function tid:dungeon/sin/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_west",sort=random] at @s run function tid:dungeon/sin/check_west

execute as @e[type=minecraft:area_effect_cloud,name="sin_north",sort=random] at @s if score @s y matches ..219 run function tid:dungeon/sin/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_east",sort=random] at @s if score @s y matches ..219 run function tid:dungeon/sin/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_south",sort=random] at @s if score @s y matches ..219 run function tid:dungeon/sin/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_west",sort=random] at @s if score @s y matches ..219 run function tid:dungeon/sin/check_west

#The Fire Chambers
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_north",sort=random] at @s run function tid:dungeon/sin/chambers/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_east",sort=random] at @s run function tid:dungeon/sin/chambers/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_south",sort=random] at @s run function tid:dungeon/sin/chambers/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_west",sort=random] at @s run function tid:dungeon/sin/chambers/check_west
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_down",sort=random] at @s run function tid:dungeon/sin/chambers/check_down

#The Fire Chambers Depths
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_north",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_east",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_south",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_west",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_west
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_north",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_east",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_south",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_west",scores={y=131},sort=random] at @s run function tid:dungeon/sin/chambers/check_west

#Run lava movers in sin_chambers
execute as @e[type=minecraft:area_effect_cloud,name="lava_mover"] at @s run function tid:misc/lava_move

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="sin_north"] unless entity @e[type=area_effect_cloud,name="sin_south"] unless entity @e[type=area_effect_cloud,name="sin_east"] unless entity @e[type=area_effect_cloud,name="sin_west"] unless entity @e[type=area_effect_cloud,name="sin_up"] unless entity @e[type=area_effect_cloud,name="sin_down"] unless entity @e[type=area_effect_cloud,name="sin_chambers_north"] unless entity @e[type=area_effect_cloud,name="sin_chambers_south"] unless entity @e[type=area_effect_cloud,name="sin_chambers_east"] unless entity @e[type=area_effect_cloud,name="sin_chambers_west"] unless entity @e[type=area_effect_cloud,name="sin_chambers_down"] run scoreboard players set sin_handler_phase value 30
