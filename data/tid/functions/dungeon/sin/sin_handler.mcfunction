#Handler entity for Sin City
execute unless score @s phase matches 1.. run function tid:dungeon/sin/sin_handler_p0
execute if score @s phase matches 1 run function tid:dungeon/sin/sin_handler_p1
execute if score @s phase matches 2 run function tid:dungeon/sin/sin_handler_p2
execute if score @s phase matches 3 run function tid:dungeon/sin/sin_handler_p3
execute if score @s phase matches 4 run function tid:dungeon/sin/sin_handler_p4
#execute if score @s phase matches 5 run function tid:dungeon/sin/sin_handler_p5
#execute if score @s phase matches 6 run function tid:dungeon/sin/sin_handler_p6

#Runs generation
execute as @e[type=minecraft:area_effect_cloud,name="sin_land_north",sort=random] at @s run function tid:dungeon/sin/land_check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_land_east",sort=random] at @s run function tid:dungeon/sin/land_check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_land_south",sort=random] at @s run function tid:dungeon/sin/land_check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_land_west",sort=random] at @s run function tid:dungeon/sin/land_check_west

execute as @e[type=minecraft:area_effect_cloud,name="sin_pool_north",sort=random] at @s run function tid:dungeon/sin/pool_check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_pool_east",sort=random] at @s run function tid:dungeon/sin/pool_check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_pool_south",sort=random] at @s run function tid:dungeon/sin/pool_check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_pool_west",sort=random] at @s run function tid:dungeon/sin/pool_check_west

execute as @e[type=minecraft:area_effect_cloud,name="sin_plat_small_north",sort=random] at @s run function tid:dungeon/sin/plat_check_small_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_plat_small_east",sort=random] at @s run function tid:dungeon/sin/plat_check_small_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_plat_small_south",sort=random] at @s run function tid:dungeon/sin/plat_check_small_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_plat_small_west",sort=random] at @s run function tid:dungeon/sin/plat_check_small_west

execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_north",sort=random] at @s run function tid:dungeon/sin/chambers_check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_east",sort=random] at @s run function tid:dungeon/sin/chambers_check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_south",sort=random] at @s run function tid:dungeon/sin/chambers_check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_west",sort=random] at @s run function tid:dungeon/sin/chambers_check_west
execute as @e[type=minecraft:area_effect_cloud,name="sin_chambers_down",sort=random] at @s run function tid:dungeon/sin/chambers_check_down

execute as @e[type=minecraft:area_effect_cloud,name="sin_north",sort=random] at @s run function tid:dungeon/sin/check_north
execute as @e[type=minecraft:area_effect_cloud,name="sin_east",sort=random] at @s run function tid:dungeon/sin/check_east
execute as @e[type=minecraft:area_effect_cloud,name="sin_south",sort=random] at @s run function tid:dungeon/sin/check_south
execute as @e[type=minecraft:area_effect_cloud,name="sin_west",sort=random] at @s run function tid:dungeon/sin/check_west
execute as @e[type=minecraft:area_effect_cloud,name="sin_down",sort=random] at @s run function tid:dungeon/sin/check_down
execute as @e[type=minecraft:area_effect_cloud,name="sin_up",sort=random] at @s run function tid:dungeon/sin/check_up

execute as @e[type=minecraft:area_effect_cloud,name="lava_mover",sort=random] at @s run function tid:misc/lava_move
execute as @e[type=minecraft:armor_stand,name="polished_blackstone_bricks_pillar",sort=random] at @s if block ~ ~-128 ~ orange_wool run fill ~ ~ ~ ~ ~1 ~ polished_blackstone_bricks





