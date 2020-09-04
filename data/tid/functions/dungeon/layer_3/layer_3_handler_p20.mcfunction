#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="station_north"] at @s run function tid:dungeon/station/check_north
execute as @e[type=minecraft:area_effect_cloud,name="station_east"] at @s run function tid:dungeon/station/check_east
execute as @e[type=minecraft:area_effect_cloud,name="station_south"] at @s run function tid:dungeon/station/check_south
execute as @e[type=minecraft:area_effect_cloud,name="station_west"] at @s run function tid:dungeon/station/check_west
execute as @e[type=minecraft:area_effect_cloud,name="station_up"] at @s run function tid:dungeon/station/check_up
execute as @e[type=minecraft:area_effect_cloud,name="station_down"] at @s run function tid:dungeon/station/check_down

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="station_north"] unless entity @e[type=area_effect_cloud,name="station_south"] unless entity @e[type=area_effect_cloud,name="station_east"] unless entity @e[type=area_effect_cloud,name="station_west"] unless entity @e[type=area_effect_cloud,name="station_up"] unless entity @e[type=area_effect_cloud,name="station_down"] run scoreboard players set layer_3_handler_phase value 30