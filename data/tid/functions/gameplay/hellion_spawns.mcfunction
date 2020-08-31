#Pick a random number between 0 and 31 for choosing which mob to spawn
scoreboard players set @s counter1 0
execute if predicate tid:random_50 run scoreboard players add @s counter1 1
execute if predicate tid:random_50 run scoreboard players add @s counter1 2
execute if predicate tid:random_50 run scoreboard players add @s counter1 4

#Large Magma Cube
execute if score @s counter1 matches 0..1 run summon magma_cube ~ ~ ~ {Tags:["keep"],Size:3}
#Explosion Elemental
execute if score @s counter1 matches 2..3 run function tid:custom_mobs/explosion_elemental
#Oxidation Spirit
execute if score @s counter1 matches 4..7 run function tid:custom_mobs/oxidation_spirit
execute if score @s counter1 matches 4..7 if predicate tid:random_50 positioned ~ ~ ~-.5 run function tid:custom_mobs/oxidation_spirit
execute if score @s counter1 matches 4..7 if predicate tid:random_50 positioned ~.5 ~ ~ run function tid:custom_mobs/oxidation_spirit
execute if score @s counter1 matches 4..7 if predicate tid:random_50 positioned ~-.5 ~ ~ run function tid:custom_mobs/oxidation_spirit

#Dye Zombie
execute if predicate tid:random_07 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:yellow_dye,Count:1}],HandDropChances:[1.00F]}

#Kill the source mob
tp @s 1 -100 1