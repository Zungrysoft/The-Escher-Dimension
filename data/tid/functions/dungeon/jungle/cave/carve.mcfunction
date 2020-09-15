#Movement
tp @s ^ ^ ^3

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

execute if score @s counter1 matches 8 run tp @s ~ ~ ~ ~9 ~1
execute if score @s counter1 matches 9 run tp @s ~ ~ ~ ~-9 ~1
execute if score @s counter1 matches 10 run tp @s ~ ~ ~ ~9 ~-1
execute if score @s counter1 matches 11 run tp @s ~ ~ ~ ~-9 ~-1

#Splitting
execute if predicate tid:random_03 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"cave_jungle\""}

#Carve if we haven't gone above or below water. If we have, end the cave
function tid:update_coords
scoreboard players set temp value 0
execute if score @s y matches 25..71 if score @s x matches -100..100 if score @s z matches -100..100 run scoreboard players set temp value 1
#Don't let it smother the spawn
execute if score @s y matches 60.. if score @s x matches -15..15 if score @s z matches -15..15 run scoreboard players set temp value 0
execute if score temp value matches 1 run function tid:dungeon/jungle/cave/select
execute unless score temp value matches 1 run kill @s

#Count the number of total carves perfomed
scoreboard players add jungle_cave_carves value 1

#Limit the number of carvers at once
execute store result score temp value run execute if entity @e[name="cave_jungle"]
execute if score temp value matches 8.. run kill @s

#Randomly decide to end the cave
execute if predicate tid:random_005 run kill @s

#Leave treasure behind
execute positioned ~ ~128 ~ unless entity @e[name="underwater_treasure",distance=0..20] run summon minecraft:area_effect_cloud ~ ~-2 ~ {Duration:99999999,CustomName:"\"underwater_treasure\""}

#Initialize
execute unless score @s counter1 matches 0.. run function tid:dungeon/jungle/cave/init


