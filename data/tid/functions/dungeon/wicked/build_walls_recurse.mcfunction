#Expand wall pieces
execute as @e[type=minecraft:area_effect_cloud,name="wicked_north",sort=random,limit=1] at @s run function tid:dungeon/wicked/check_north
execute as @e[type=minecraft:area_effect_cloud,name="wicked_east",sort=random,limit=1] at @s run function tid:dungeon/wicked/check_east
execute as @e[type=minecraft:area_effect_cloud,name="wicked_south",sort=random,limit=1] at @s run function tid:dungeon/wicked/check_south
execute as @e[type=minecraft:area_effect_cloud,name="wicked_west",sort=random,limit=1] at @s run function tid:dungeon/wicked/check_west

#Count down
scoreboard players remove wicked_walls value 1

#Recurse
execute if score wicked_walls value matches 1.. run function tid:dungeon/wicked/build_walls_recurse
