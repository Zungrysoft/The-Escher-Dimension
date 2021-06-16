#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="infernal_north",sort=random] at @s run function tid:dungeon/infernal/check_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_east",sort=random] at @s run function tid:dungeon/infernal/check_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_south",sort=random] at @s run function tid:dungeon/infernal/check_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_west",sort=random] at @s run function tid:dungeon/infernal/check_west
execute as @e[type=minecraft:area_effect_cloud,name="infernal_up",sort=random] at @s run function tid:dungeon/infernal/check_up
execute as @e[type=minecraft:area_effect_cloud,name="infernal_down",sort=random] at @s run function tid:dungeon/infernal/check_down

#Factories
execute as @e[type=minecraft:area_effect_cloud,name="infernal_factory_north",sort=random] at @s run function tid:dungeon/infernal/factory/check_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_factory_east",sort=random] at @s run function tid:dungeon/infernal/factory/check_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_factory_south",sort=random] at @s run function tid:dungeon/infernal/factory/check_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_factory_west",sort=random] at @s run function tid:dungeon/infernal/factory/check_west

#Towers
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_short_north",sort=random] at @s run function tid:dungeon/infernal/tower/check_short_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_short_east",sort=random] at @s run function tid:dungeon/infernal/tower/check_short_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_short_south",sort=random] at @s run function tid:dungeon/infernal/tower/check_short_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_short_west",sort=random] at @s run function tid:dungeon/infernal/tower/check_short_west

execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_tall_north",sort=random] at @s run function tid:dungeon/infernal/tower/check_tall_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_tall_east",sort=random] at @s run function tid:dungeon/infernal/tower/check_tall_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_tall_south",sort=random] at @s run function tid:dungeon/infernal/tower/check_tall_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_tower_tall_west",sort=random] at @s run function tid:dungeon/infernal/tower/check_tall_west

#Docks
execute as @e[type=minecraft:area_effect_cloud,name="infernal_dock_north",sort=random] at @s run function tid:dungeon/infernal/dock/check_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_dock_east",sort=random] at @s run function tid:dungeon/infernal/dock/check_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_dock_south",sort=random] at @s run function tid:dungeon/infernal/dock/check_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_dock_west",sort=random] at @s run function tid:dungeon/infernal/dock/check_west

#Andesite Sewers
execute as @e[type=minecraft:area_effect_cloud,name="sewer_section"] at @s run function tid:dungeon/infernal/sewer_check

#Super Safety Measure
execute as @a[predicate=tid:in_layer_infernal,gamemode=survival] at @s if block ~ ~-2 ~ lava run tp @s 0 55 0

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="infernal_north"] unless entity @e[type=area_effect_cloud,name="infernal_south"] unless entity @e[type=area_effect_cloud,name="infernal_east"] unless entity @e[type=area_effect_cloud,name="infernal_west"] unless entity @e[type=area_effect_cloud,name="infernal_up"] unless entity @e[type=area_effect_cloud,name="infernal_down"] unless entity @e[type=area_effect_cloud,name="infernal_factory_north"] unless entity @e[type=area_effect_cloud,name="infernal_factory_south"] unless entity @e[type=area_effect_cloud,name="infernal_factory_east"] unless entity @e[type=area_effect_cloud,name="infernal_factory_west"] unless entity @e[type=area_effect_cloud,name="infernal_tower_short_north"] unless entity @e[type=area_effect_cloud,name="infernal_tower_short_south"] unless entity @e[type=area_effect_cloud,name="infernal_tower_short_east"] unless entity @e[type=area_effect_cloud,name="infernal_tower_short_west"] unless entity @e[type=area_effect_cloud,name="infernal_tower_tall_north"] unless entity @e[type=area_effect_cloud,name="infernal_tower_tall_south"] unless entity @e[type=area_effect_cloud,name="infernal_tower_tall_east"] unless entity @e[type=area_effect_cloud,name="infernal_tower_tall_west"] unless entity @e[type=area_effect_cloud,name="infernal_dock_north"] unless entity @e[type=area_effect_cloud,name="infernal_dock_south"] unless entity @e[type=area_effect_cloud,name="infernal_dock_east"] unless entity @e[type=area_effect_cloud,name="infernal_dock_west"] unless entity @e[type=area_effect_cloud,name="sewer_section"] run scoreboard players set infernal_handler_phase value 30
