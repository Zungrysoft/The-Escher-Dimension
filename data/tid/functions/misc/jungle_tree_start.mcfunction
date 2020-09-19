#Set initial values
scoreboard players set tree_status value 0
scoreboard players set tree_length value 20
execute if predicate tid:random_50 run scoreboard players add tree_length value 3
execute if predicate tid:random_50 run scoreboard players add tree_length value 3

#Summon the entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

#Starting direction
tp @e[tag=new] ~ ~ ~ 0 -90
execute if predicate tid:random_50 run tp @e[tag=new] ~ ~ ~ 0 -70
execute if predicate tid:random_33 run tp @e[tag=new] ~ ~ ~ 90 -70
execute if predicate tid:random_25 run tp @e[tag=new] ~ ~ ~ 180 -70
execute if predicate tid:random_20 run tp @e[tag=new] ~ ~ ~ -90 -70
execute if predicate tid:random_15 run tp @e[tag=new] ~ ~ ~ 0 -60
execute if predicate tid:random_15 run tp @e[tag=new] ~ ~ ~ 90 -60
execute if predicate tid:random_10 run tp @e[tag=new] ~ ~ ~ 180 -60
execute if predicate tid:random_10 run tp @e[tag=new] ~ ~ ~ -90 -60

#Upward acceleration
scoreboard players set @e[tag=new] counter1 0
execute if predicate tid:random_50 run scoreboard players set @e[tag=new] counter1 1
execute if predicate tid:random_33 run scoreboard players set @e[tag=new] counter1 2

#Twist
execute if predicate tid:random_50 run scoreboard players set @e[tag=new] counter2 1
execute if predicate tid:random_33 run scoreboard players set @e[tag=new] counter2 2
execute if predicate tid:random_25 run scoreboard players set @e[tag=new] counter2 -1
execute if predicate tid:random_20 run scoreboard players set @e[tag=new] counter2 -2

execute as @e[tag=new] at @s rotated as @s run function tid:misc/jungle_tree_recurse
kill @e[tag=new]