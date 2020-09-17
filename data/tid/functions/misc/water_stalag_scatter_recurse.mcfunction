#Count down
scoreboard players remove water_stalag_count value 1

#Scatter position
tp @e[tag=new] -64 148 -64
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~64 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~32 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~16 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~8 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~4 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~2 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~1 ~ ~

execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~64
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~32
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~16
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~8
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~4
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~2
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~1

execute at @e[tag=new] if block ~ ~3 ~ water run function tid:misc/water_stalag

#Recurse
execute if score water_stalag_count value matches 1.. run function tid:misc/water_stalag_scatter_recurse