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
execute as @e[type=minecraft:area_effect_cloud,name="infernal_factory_up",sort=random] at @s run function tid:dungeon/infernal/factory/check_up
execute as @e[type=minecraft:area_effect_cloud,name="infernal_factory_down",sort=random] at @s run function tid:dungeon/infernal/factory/check_down

#Andesite Sewers
execute as @e[type=minecraft:area_effect_cloud,name="sewer_section"] at @s run function tid:dungeon/infernal/sewer_check

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="infernal_north"] unless entity @e[type=area_effect_cloud,name="infernal_south"] unless entity @e[type=area_effect_cloud,name="infernal_east"] unless entity @e[type=area_effect_cloud,name="infernal_west"] unless entity @e[type=area_effect_cloud,name="infernal_up"] unless entity @e[type=area_effect_cloud,name="infernal_down"] unless entity @e[type=area_effect_cloud,name="infernal_factory_north"] unless entity @e[type=area_effect_cloud,name="infernal_factory_south"] unless entity @e[type=area_effect_cloud,name="infernal_factory_east"] unless entity @e[type=area_effect_cloud,name="infernal_factory_west"] unless entity @e[type=area_effect_cloud,name="infernal_factory_up"] unless entity @e[type=area_effect_cloud,name="infernal_factory_down"] unless entity @e[type=area_effect_cloud,name="sewer_section"] run scoreboard players set infernal_handler_phase value 30