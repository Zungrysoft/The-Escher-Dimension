#Count down
scoreboard players remove water_stalag_count value 1

#Scatter position
tp @e[tag=new] -96 148 -96
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~64 ~ ~
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~64 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~32 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~16 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~8 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~4 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~2 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~1 ~ ~

execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~ ~ ~64
execute if predicate tid:random_57 as @e[tag=new] at @s run tp @s ~ ~ ~64
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~32
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~16
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~8
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~4
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~2
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~1

#Maybe build a kelp patch
execute if predicate tid:random_03 at @e[tag=new] positioned ~ 159 ~ run function tid:misc/water_kelp

#Maybe build a chain
execute if predicate tid:random_03 at @e[tag=new] positioned ~ 177 ~ if block ~ ~ ~ water run function tid:misc/water_chain
execute if predicate tid:random_03 at @e[tag=new] positioned ~ 170 ~ if block ~ ~ ~ water run function tid:misc/water_chain

#Maybe build some pockets
execute if predicate tid:random_01 at @e[tag=new] if block ~ ~1 ~ water run function tid:misc/water_pocket

#Maybe build a coral
execute if predicate tid:random_10 at @e[tag=new] if block ~ ~1 ~ water run function tid:misc/water_coral

#Maybe build some ruins here
execute if predicate tid:random_05 at @e[tag=new] if block ~ ~3 ~ water run function tid:misc/water_ruin

#Maybe build a stalag here
scoreboard players set temp9 value 0
execute if predicate tid:random_50 run scoreboard players set temp9 value 1
execute if score temp9 value matches 0 positioned 0 148 0 at @e[tag=new,distance=0..100] if block ~ ~3 ~ water run function tid:misc/water_stalag
execute unless score temp9 value matches 0 at @e[tag=new] if block ~ ~3 ~ water run function tid:misc/water_stalag

#Recurse
execute if score water_stalag_count value matches 1.. run function tid:misc/water_stalag_scatter_recurse