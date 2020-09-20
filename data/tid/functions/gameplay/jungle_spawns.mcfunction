function tid:update_coords

#Illusioners spawn covered by a large amount of ceiling, not near other illusioners, and not near spawn
#If these checks fail, kill the Illusioner
scoreboard players set temp value 0
#execute if score @s y matches ..202 run scoreboard players set temp value 1
execute if score @s x matches -15..15 if score @s z matches -15..15 run scoreboard players set temp value 0
execute if block ~ ~10 ~ air run scoreboard players set temp value 0
execute if block ~ ~12 ~ air run scoreboard players set temp value 0
execute if block ~ ~14 ~ air run scoreboard players set temp value 0
execute if entity @e[type=illusioner,distance=1..10] run scoreboard players set temp value 0
execute if score temp value matches 0 run tp @s 1 -100 1

#If the Illusioner is left alive, modify its tag so the game knows not to kill it again
tag @s add keep

#Some other monsters may also spawn off this
#Dye Zombies spawn rarely
execute if predicate tid:random_05 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[1.00F]}

#Parrots spawn rarely if there aren't other parrots nearby
execute if predicate tid:random_01 unless entity @e[type=parrot,distance=0..50] run summon minecraft:parrot ~.5 ~ ~