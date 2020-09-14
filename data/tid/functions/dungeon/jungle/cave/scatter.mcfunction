#Summon it
summon minecraft:area_effect_cloud -64 35 -64 {Duration:99999999,CustomName:"\"cave_jungle\"",Tags:["new"]}

#Randomize its position
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~64 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~32 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~16 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~8 ~ ~
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~4 ~ ~

execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~64
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~32
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~16
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~8
execute if predicate tid:random_50 as @e[tag=new] at @s run tp @s ~ ~ ~4

#Remove the new tag
tag @e remove new