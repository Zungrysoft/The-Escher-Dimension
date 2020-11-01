#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="station_north"] at @s run function tid:dungeon/station/check_north
execute as @e[type=minecraft:area_effect_cloud,name="station_east"] at @s run function tid:dungeon/station/check_east
execute as @e[type=minecraft:area_effect_cloud,name="station_south"] at @s run function tid:dungeon/station/check_south
execute as @e[type=minecraft:area_effect_cloud,name="station_west"] at @s run function tid:dungeon/station/check_west
execute as @e[type=minecraft:area_effect_cloud,name="station_up"] at @s run function tid:dungeon/station/check_up
execute as @e[type=minecraft:area_effect_cloud,name="station_down"] at @s run function tid:dungeon/station/check_down

execute as @e[type=minecraft:area_effect_cloud,name="moon_north"] at @s run function tid:dungeon/moon/check_north
execute as @e[type=minecraft:area_effect_cloud,name="moon_east"] at @s run function tid:dungeon/moon/check_east
execute as @e[type=minecraft:area_effect_cloud,name="moon_south"] at @s run function tid:dungeon/moon/check_south
execute as @e[type=minecraft:area_effect_cloud,name="moon_west"] at @s run function tid:dungeon/moon/check_west

execute as @e[type=minecraft:area_effect_cloud,name="moon_bridge_north"] at @s run function tid:dungeon/moon/bridge_check_north
execute as @e[type=minecraft:area_effect_cloud,name="moon_bridge_east"] at @s run function tid:dungeon/moon/bridge_check_east
execute as @e[type=minecraft:area_effect_cloud,name="moon_bridge_south"] at @s run function tid:dungeon/moon/bridge_check_south
execute as @e[type=minecraft:area_effect_cloud,name="moon_bridge_west"] at @s run function tid:dungeon/moon/bridge_check_west
execute as @e[type=minecraft:area_effect_cloud,name="moon_bridge_up"] at @s run function tid:dungeon/moon/bridge_check_up

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="station_north"] unless entity @e[type=area_effect_cloud,name="station_south"] unless entity @e[type=area_effect_cloud,name="station_east"] unless entity @e[type=area_effect_cloud,name="station_west"] unless entity @e[type=area_effect_cloud,name="station_up"] unless entity @e[type=area_effect_cloud,name="station_down"] unless entity @e[type=area_effect_cloud,name="moon_north"] unless entity @e[type=area_effect_cloud,name="moon_south"] unless entity @e[type=area_effect_cloud,name="moon_east"] unless entity @e[type=area_effect_cloud,name="moon_west"] unless entity @e[type=area_effect_cloud,name="moon_bridge_north"] unless entity @e[type=area_effect_cloud,name="moon_bridge_south"] unless entity @e[type=area_effect_cloud,name="moon_bridge_east"] unless entity @e[type=area_effect_cloud,name="moon_bridge_west"] unless entity @e[type=area_effect_cloud,name="moon_bridge_up"] run scoreboard players set layer_3_handler_phase value 30
