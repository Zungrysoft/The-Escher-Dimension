#Summon entity to hold position
summon minecraft:area_effect_cloud ~-16 ~ ~-16 {Duration:99999999,Tags:["new"]}

#Randomize offsets
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~1 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~2 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~4 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~8 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~16 ~ ~

execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~1 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~2 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~4 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~8 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~16 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~32 ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~64 ~

execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~1
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~2
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~4
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~8
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~16

execute as @e[tag=new] at @s run summon tnt
kill @e[tag=new]
