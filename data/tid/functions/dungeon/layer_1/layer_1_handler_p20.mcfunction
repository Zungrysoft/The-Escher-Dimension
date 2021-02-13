#Run the dungeon generation
#Stronghold Ruins
execute as @e[type=minecraft:area_effect_cloud,name="stronghold2_north"] at @s run function tid:dungeon/stronghold2/check_north
execute as @e[type=minecraft:area_effect_cloud,name="stronghold2_east"] at @s run function tid:dungeon/stronghold2/check_east
execute as @e[type=minecraft:area_effect_cloud,name="stronghold2_south"] at @s run function tid:dungeon/stronghold2/check_south
execute as @e[type=minecraft:area_effect_cloud,name="stronghold2_west"] at @s run function tid:dungeon/stronghold2/check_west

#Boomstick Basement
execute as @e[type=minecraft:area_effect_cloud,name="brick_north"] at @s run function tid:dungeon/brick/check_north
execute as @e[type=minecraft:area_effect_cloud,name="brick_east"] at @s run function tid:dungeon/brick/check_east
execute as @e[type=minecraft:area_effect_cloud,name="brick_south"] at @s run function tid:dungeon/brick/check_south
execute as @e[type=minecraft:area_effect_cloud,name="brick_west"] at @s run function tid:dungeon/brick/check_west

#The Deep Cold
execute as @e[type=minecraft:area_effect_cloud,name="ice_north"] at @s run function tid:dungeon/ice/check_north
execute as @e[type=minecraft:area_effect_cloud,name="ice_east"] at @s run function tid:dungeon/ice/check_east
execute as @e[type=minecraft:area_effect_cloud,name="ice_south"] at @s run function tid:dungeon/ice/check_south
execute as @e[type=minecraft:area_effect_cloud,name="ice_west"] at @s run function tid:dungeon/ice/check_west
execute as @e[type=minecraft:area_effect_cloud,name="ice_up"] at @s run function tid:dungeon/ice/check_up
execute as @e[type=minecraft:area_effect_cloud,name="ice_down"] at @s run function tid:dungeon/ice/check_down

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="stronghold2_north"] unless entity @e[type=area_effect_cloud,name="stronghold2_south"] unless entity @e[type=area_effect_cloud,name="stronghold2_east"] unless entity @e[type=area_effect_cloud,name="stronghold2_west"] unless entity @e[type=area_effect_cloud,name="brick_north"] unless entity @e[type=area_effect_cloud,name="brick_south"] unless entity @e[type=area_effect_cloud,name="brick_east"] unless entity @e[type=area_effect_cloud,name="brick_west"] unless entity @e[type=area_effect_cloud,name="ice_north"] unless entity @e[type=area_effect_cloud,name="ice_south"] unless entity @e[type=area_effect_cloud,name="ice_east"] unless entity @e[type=area_effect_cloud,name="ice_west"] unless entity @e[type=area_effect_cloud,name="ice_up"] unless entity @e[type=area_effect_cloud,name="ice_down"] run scoreboard players set layer_1_handler_phase value 30
