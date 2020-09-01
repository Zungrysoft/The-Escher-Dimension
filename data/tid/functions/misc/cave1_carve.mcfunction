#Movement
tp @s ^ ^ ^3

#Initial turning direction value
execute unless score @s counter1 matches 1.. run say NEW
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run tp @s ~ ~ ~ ~180 ~
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run tp @s ~ ~ ~ ~90 ~
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run tp @s ~ ~ ~ ~45 ~
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run tp @s ~ ~ ~ ~22 ~
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run tp @s ~ ~ ~ ~11 ~
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run tp @s ~ ~ ~ ~5 ~

execute unless score @s counter1 matches 1.. if predicate tid:random_07 run scoreboard players set @s counter1 0
execute unless score @s counter1 matches 1.. if predicate tid:random_07 run scoreboard players set @s counter1 1
execute unless score @s counter1 matches 1.. if predicate tid:random_08 run scoreboard players set @s counter1 2
execute unless score @s counter1 matches 1.. if predicate tid:random_09 run scoreboard players set @s counter1 3
execute unless score @s counter1 matches 1.. if predicate tid:random_10 run scoreboard players set @s counter1 4
execute unless score @s counter1 matches 1.. if predicate tid:random_10 run scoreboard players set @s counter1 5
execute unless score @s counter1 matches 1.. if predicate tid:random_15 run scoreboard players set @s counter1 6
execute unless score @s counter1 matches 1.. if predicate tid:random_15 run scoreboard players set @s counter1 7
execute unless score @s counter1 matches 1.. if predicate tid:random_20 run scoreboard players set @s counter1 8
execute unless score @s counter1 matches 1.. if predicate tid:random_25 run scoreboard players set @s counter1 9
execute unless score @s counter1 matches 1.. if predicate tid:random_33 run scoreboard players set @s counter1 10
execute unless score @s counter1 matches 1.. if predicate tid:random_50 run scoreboard players set @s counter1 11

#Randomly change turning direction
execute if predicate tid:random_05 run scoreboard players set @s counter1 0
execute if predicate tid:random_05 run scoreboard players set @s counter1 1
execute if predicate tid:random_05 run scoreboard players set @s counter1 2
execute if predicate tid:random_05 run scoreboard players set @s counter1 3
execute if predicate tid:random_05 run scoreboard players set @s counter1 4
execute if predicate tid:random_05 run scoreboard players set @s counter1 5
execute if predicate tid:random_05 run scoreboard players set @s counter1 6
execute if predicate tid:random_05 run scoreboard players set @s counter1 7
execute if predicate tid:random_05 run scoreboard players set @s counter1 8
execute if predicate tid:random_05 run scoreboard players set @s counter1 9
execute if predicate tid:random_05 run scoreboard players set @s counter1 10
execute if predicate tid:random_05 run scoreboard players set @s counter1 11

#Execute turn
execute if score @s counter1 matches 0 run tp @s ~ ~ ~ ~9 ~
execute if score @s counter1 matches 1 run tp @s ~ ~ ~ ~-9 ~
execute if score @s counter1 matches 2 run tp @s ~ ~ ~ ~ ~9
execute if score @s counter1 matches 3 run tp @s ~ ~ ~ ~ ~-9

execute if score @s counter1 matches 4 run tp @s ~ ~ ~ ~2 ~2
execute if score @s counter1 matches 5 run tp @s ~ ~ ~ ~2 ~-2
execute if score @s counter1 matches 6 run tp @s ~ ~ ~ ~-2 ~2
execute if score @s counter1 matches 7 run tp @s ~ ~ ~ ~-2 ~-2

execute if score @s counter1 matches 8 run tp @s ~ ~ ~ ~5 ~1
execute if score @s counter1 matches 9 run tp @s ~ ~ ~ ~-5 ~1
execute if score @s counter1 matches 10 run tp @s ~ ~ ~ ~5 ~-1
execute if score @s counter1 matches 11 run tp @s ~ ~ ~ ~-5 ~-1

#Splitting
execute if predicate tid:random_03 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"cave1\""}

#Carve
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air

#Limit the number of carves at once
execute store result score @s tries run execute if entity @e[name="cave1"]
execute if score @s tries matches 8.. run kill @s

#Randomly decide to end the cave
execute if predicate tid:random_005 run kill @s


