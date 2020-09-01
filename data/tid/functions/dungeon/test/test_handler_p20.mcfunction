#Run the dungeon generation
execute as @e[type=minecraft:area_effect_cloud,name="test_north",sort=random] at @s run function tid:dungeon/test/check_north
execute as @e[type=minecraft:area_effect_cloud,name="test_east",sort=random] at @s run function tid:dungeon/test/check_east
execute as @e[type=minecraft:area_effect_cloud,name="test_south",sort=random] at @s run function tid:dungeon/test/check_south
execute as @e[type=minecraft:area_effect_cloud,name="test_west",sort=random] at @s run function tid:dungeon/test/check_west
execute as @e[type=minecraft:area_effect_cloud,name="test_up",sort=random] at @s run function tid:dungeon/test/check_up

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="test_north"] unless entity @e[type=area_effect_cloud,name="test_south"] unless entity @e[type=area_effect_cloud,name="test_east"] unless entity @e[type=area_effect_cloud,name="test_west"] unless entity @e[type=area_effect_cloud,name="test_up"] run scoreboard players set test_handler_phase value 30