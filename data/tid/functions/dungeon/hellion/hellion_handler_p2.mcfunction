#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="hellion_north",sort=random] at @s run function tid:dungeon/hellion/check_north
execute as @e[type=minecraft:area_effect_cloud,name="hellion_east",sort=random] at @s run function tid:dungeon/hellion/check_east
execute as @e[type=minecraft:area_effect_cloud,name="hellion_south",sort=random] at @s run function tid:dungeon/hellion/check_south
execute as @e[type=minecraft:area_effect_cloud,name="hellion_west",sort=random] at @s run function tid:dungeon/hellion/check_west
execute as @e[type=minecraft:area_effect_cloud,name="hellion_up",sort=random] at @s run function tid:dungeon/hellion/check_up

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="hellion_north"] unless entity @e[type=area_effect_cloud,name="hellion_south"] unless entity @e[type=area_effect_cloud,name="hellion_east"] unless entity @e[type=area_effect_cloud,name="hellion_west"] unless entity @e[type=area_effect_cloud,name="hellion_up"] run scoreboard players set hellion_handler_phase value 3