function tid:update_coords

#Illusioners spawn covered by a large amount of ceiling, not near other illusioners, and not near spawn
scoreboard players set temp value 1
execute if score @s x matches -15..15 if score @s z matches -15..15 run scoreboard players set temp value 0
execute if block ~ ~10 ~ air run scoreboard players set temp value 0
execute if block ~ ~12 ~ air run scoreboard players set temp value 0
execute if block ~ ~14 ~ air run scoreboard players set temp value 0
execute if entity @e[type=illusioner,distance=0..10] run scoreboard players set temp value 0
execute if score temp value matches 1 run summon illusioner

#Dye Zombies spawn rarely
execute if score temp value matches 0 if predicate tid:random_10 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:green_dye,Count:1}],HandDropChances:[2F]}

#Parrots spawn rarely if there aren't other parrots nearby
execute if score temp value matches 0 if predicate tid:random_05 unless entity @e[type=parrot,distance=0..50] run summon minecraft:parrot ~.5 ~ ~
