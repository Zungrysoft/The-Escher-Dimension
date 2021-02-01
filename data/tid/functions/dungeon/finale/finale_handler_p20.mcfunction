#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="finale_north"] at @s run function tid:dungeon/finale/check_north
execute as @e[type=minecraft:area_effect_cloud,name="finale_east"] at @s run function tid:dungeon/finale/check_east
execute as @e[type=minecraft:area_effect_cloud,name="finale_west"] at @s run function tid:dungeon/finale/check_west

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="finale_north"] unless entity @e[type=area_effect_cloud,name="finale_east"] unless entity @e[type=area_effect_cloud,name="finale_west"] run scoreboard players set finale_handler_phase value 30
