#Glass bridges are handled before other structures so the pillars don't spill over other structures
execute as @e[type=minecraft:area_effect_cloud,name="infernal_glassbridge_north",sort=random] at @s run function tid:dungeon/infernal/glassbridge/check_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_glassbridge_east",sort=random] at @s run function tid:dungeon/infernal/glassbridge/check_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_glassbridge_south",sort=random] at @s run function tid:dungeon/infernal/glassbridge/check_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_glassbridge_west",sort=random] at @s run function tid:dungeon/infernal/glassbridge/check_west

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="infernal_glassbridge_north"] unless entity @e[type=area_effect_cloud,name="infernal_glassbridge_south"] unless entity @e[type=area_effect_cloud,name="infernal_glassbridge_east"] unless entity @e[type=area_effect_cloud,name="infernal_glassbridge_west"] run scoreboard players set infernal_handler_phase value 19
