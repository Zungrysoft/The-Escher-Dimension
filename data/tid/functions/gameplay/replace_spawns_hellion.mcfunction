#Pick a random number between 0 and 4 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2

#Explosion Elemental
execute if score temp value matches 0 run function tid:custom_mobs/explosion_elemental
#Oxidation Spirit
execute if score temp value matches 1..3 run function tid:custom_mobs/oxidation_spirit
execute if score temp value matches 1..3 if predicate tid:random_50 positioned ~ ~ ~-.5 run function tid:custom_mobs/oxidation_spirit
execute if score temp value matches 1..3 if predicate tid:random_50 positioned ~.5 ~ ~ run function tid:custom_mobs/oxidation_spirit
execute if score temp value matches 1..3 if predicate tid:random_50 positioned ~-.5 ~ ~ run function tid:custom_mobs/oxidation_spirit

#Dye Zombie
execute if predicate tid:random_07 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:yellow_dye,Count:1}],HandDropChances:[1.00F]}
