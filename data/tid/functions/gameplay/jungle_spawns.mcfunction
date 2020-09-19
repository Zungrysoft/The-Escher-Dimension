function tid:update_coords

#Illusioners spawn at low y levels, covered by a ceiling, and not near spawn
scoreboard players set temp value 0
execute if score @s y matches ..202 run scoreboard players set temp value 1
execute if score @s x matches -30..30 if score @s z matches -30..30 run scoreboard players set temp value 0
execute if block ~ ~10 ~ air run scoreboard players set temp value 0
execute if block ~ ~12 ~ air run scoreboard players set temp value 0
execute if block ~ ~14 ~ air run scoreboard players set temp value 0

#Illusioner
execute if score temp value matches 1 run summon illusioner

#Pillager
execute unless score temp value matches 1 run summon pillager

#Dye Zombie
execute if predicate tid:random_07 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[1.00F]}

#Parrot
execute if predicate tid:random_01 run summon minecraft:parrot ~.5 ~ ~

#Kill the source mob
tp @s 1 -100 1