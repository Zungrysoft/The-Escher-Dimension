#Run the dungeon generation
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_north",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_north
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_east",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_east
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_south",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_south
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_west",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_west

execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_north",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_north
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_east",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_east
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_south",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_south
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_west",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_west

execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_north",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_north
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_east",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_east
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_south",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_south
execute if predicate tid:random_33 positioned 0 100000 5 as @e[type=minecraft:area_effect_cloud,name="intro_west",sort=furthest,limit=1] at @s run function tid:dungeon/intro/check_west

#Once all of the rooms are done generating, move to the next phase
execute unless entity @e[type=area_effect_cloud,name="intro_north"] unless entity @e[type=area_effect_cloud,name="intro_south"] unless entity @e[type=area_effect_cloud,name="intro_east"] unless entity @e[type=area_effect_cloud,name="intro_west"] run scoreboard players set intro_handler_phase value 30
