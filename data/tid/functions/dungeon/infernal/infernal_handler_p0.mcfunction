#say MASTER PHASE 0

execute as @e[type=minecraft:area_effect_cloud,name="infernal_north",sort=random] at @s run function tid:dungeon/infernal/check_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_east",sort=random] at @s run function tid:dungeon/infernal/check_east
execute as @e[type=minecraft:area_effect_cloud,name="infernal_south",sort=random] at @s run function tid:dungeon/infernal/check_south
execute as @e[type=minecraft:area_effect_cloud,name="infernal_west",sort=random] at @s run function tid:dungeon/infernal/check_west
execute as @e[type=minecraft:area_effect_cloud,name="infernal_up",sort=random] at @s run function tid:dungeon/infernal/check_up
execute as @e[type=minecraft:area_effect_cloud,name="infernal_down",sort=random] at @s run function tid:dungeon/infernal/check_down

execute as @e[type=minecraft:area_effect_cloud,name="sewer_section"] at @s run function tid:dungeon/infernal/sewer_check

execute unless entity @e[name="infernal_north"] unless entity @e[name="infernal_south"] unless entity @e[name="infernal_east"] unless entity @e[name="infernal_west"] unless entity @e[name="infernal_up"] unless entity @e[name="infernal_down"] unless entity @e[name="sewer_section"] run scoreboard players set @s phase 1