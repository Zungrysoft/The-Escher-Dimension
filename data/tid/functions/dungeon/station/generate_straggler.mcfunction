#Randomly decide the x and z value for the pocket
summon minecraft:armor_stand 1 1 1 {CustomName:"\"scatter_straggler\""}
spreadplayers ~16 ~16 1 16 false @e[name="scatter_straggler",type=armor_stand]

#Randomly decide the y value
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter_straggler_y\""}
execute if predicate tid:random_50 as @e[name="scatter_straggler_y",type=armor_stand] at @s run tp @s ~ ~16 ~
execute if predicate tid:random_50 as @e[name="scatter_straggler_y",type=armor_stand] at @s run tp @s ~ ~8 ~
execute if predicate tid:random_50 as @e[name="scatter_straggler_y",type=armor_stand] at @s run tp @s ~ ~4 ~
execute if predicate tid:random_50 as @e[name="scatter_straggler_y",type=armor_stand] at @s run tp @s ~ ~2 ~
execute if predicate tid:random_50 as @e[name="scatter_straggler_y",type=armor_stand] at @s run tp @s ~ ~1 ~
execute as @e[name="scatter_straggler"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="scatter_straggler_y"] Pos[1]
kill @e[name="scatter_straggler_y"]

#Rename the scatter so it will be picked up by the master
execute as @e[name="scatter_straggler"] run data modify entity @s CustomName set value "\"station_straggler\""