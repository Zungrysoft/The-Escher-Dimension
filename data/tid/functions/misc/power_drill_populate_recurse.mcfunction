#Attempts to spread a single piece of ancient debris
#Randomize it on the x and z axis
spreadplayers ~ ~ 1 3 false @s

#Randomize it on the y axis
execute at @s run tp @s ~ 14 ~
execute at @s if predicate tid:random_57 run tp @s ~ ~32 ~
execute at @s if predicate tid:random_57 run tp @s ~ ~32 ~
execute at @s if predicate tid:random_50 run tp @s ~ ~16 ~
execute at @s if predicate tid:random_50 run tp @s ~ ~8 ~
execute at @s if predicate tid:random_50 run tp @s ~ ~4 ~
execute at @s if predicate tid:random_50 run tp @s ~ ~2 ~
execute at @s if predicate tid:random_50 run tp @s ~ ~1 ~

#Insert the block
execute at @s if block ~ ~ ~ #tid:infernal_blocks run setblock ~ ~ ~ ancient_debris

#Count it up
execute at @s if block ~ ~ ~ ancient_debris run scoreboard players remove debris_score value 1000
scoreboard players remove debris_score value 1

#Recurse
execute if score debris_score value matches 1.. run function tid:misc/power_drill_populate_recurse
