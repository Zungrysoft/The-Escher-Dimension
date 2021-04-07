#Scatter position
tp @e[tag=new2] ~-7 149 ~-7
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~8 ~ ~
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~4 ~ ~
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~2 ~ ~
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~1 ~ ~

execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~ ~ ~8
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~ ~ ~4
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~ ~ ~2
execute if predicate tid:random_50 as @e[tag=new2] at @s run tp @s ~ ~ ~1

#Build the pocket
execute at @e[tag=new2] run function tid:misc/water_pocket_build
