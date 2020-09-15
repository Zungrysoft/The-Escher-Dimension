#Run the carver
execute as @e[type=area_effect_cloud,name="cave_jungle"] at @s run function tid:dungeon/jungle/cave/carve
execute as @e[type=area_effect_cloud,name="cave_jungle"] at @s run tp @s ^ ^ ^3

#If all the carvers are removed for some reason, spawn more
execute unless entity @e[type=area_effect_cloud,name="cave_jungle"] run function tid:dungeon/jungle/cave/scatter

#End if all carving is finished
execute if score jungle_cave_carves value matches 800.. run kill @e[type=area_effect_cloud,name="cave_jungle"]
execute if score jungle_cave_carves value matches 800.. run scoreboard players set jungle_handler_phase value 12