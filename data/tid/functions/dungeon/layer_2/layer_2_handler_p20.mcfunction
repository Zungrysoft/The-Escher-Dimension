#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="neon_north"] at @s run function tid:dungeon/neon/check_north
execute as @e[type=minecraft:area_effect_cloud,name="neon_east"] at @s run function tid:dungeon/neon/check_east
execute as @e[type=minecraft:area_effect_cloud,name="neon_south"] at @s run function tid:dungeon/neon/check_south
execute as @e[type=minecraft:area_effect_cloud,name="neon_west"] at @s run function tid:dungeon/neon/check_west

execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_north"] at @s run function tid:dungeon/neon/lava_check_north
execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_east"] at @s run function tid:dungeon/neon/lava_check_east
execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_south"] at @s run function tid:dungeon/neon/lava_check_south
execute as @e[type=minecraft:area_effect_cloud,name="neon_lava_west"] at @s run function tid:dungeon/neon/lava_check_west

execute as @e[type=minecraft:area_effect_cloud,name="neon_zone"] at @s run function tid:dungeon/neon/zone_check

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="neon_north"] unless entity @e[type=area_effect_cloud,name="neon_south"] unless entity @e[type=area_effect_cloud,name="neon_east"] unless entity @e[type=area_effect_cloud,name="neon_west"] unless entity @e[type=area_effect_cloud,name="neon_lava_north"] unless entity @e[type=area_effect_cloud,name="neon_lava_south"] unless entity @e[type=area_effect_cloud,name="neon_lava_east"] unless entity @e[type=area_effect_cloud,name="neon_lava_west"] unless entity @e[type=area_effect_cloud,name="neon_zone"] run scoreboard players set layer_2_handler_phase value 30

