#Count down
scoreboard players remove cave_count value 1

#Scatter position
tp @e[tag=new] -100 168 -100
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~66 ~ ~
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~66 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~32 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~16 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~8 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~4 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~2 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~1 ~ ~

execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~ ~ ~66
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~ ~ ~66
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~32
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~16
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~8
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~4
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~2
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~1

execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~ ~16 ~
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~ ~16 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~8 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~4 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~2 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~1 ~

execute at @e[tag=new] run function tid:dungeon/sin/cave

#Recurse
execute if score cave_count value matches 1.. run function tid:dungeon/sin/cave_scatter_recurse
