#If the player landed an attack last frame with the bonus damage, play some neat sounds and particles
execute if score @s damage_dealt matches 1.. if score @s igneous matches 1.. run function tid:gameplay/igneous_effects

#Takes the damage bonus attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_damage modifier remove 21483d2f-4e05-4f9a-9e04-8ea571aac87f

#Reset value
scoreboard players set bonus value 0
scoreboard players set @s igneous 0

#Make the checks for the equipped items
execute if entity @s[predicate=tid:item/igneous_mainhand] run scoreboard players add @s igneous 2
execute if entity @s[predicate=tid:item/igneous_head] run scoreboard players add @s igneous 1
execute if entity @s[predicate=tid:item/igneous_chest] run scoreboard players add @s igneous 1
execute if entity @s[predicate=tid:item/igneous_legs] run scoreboard players add @s igneous 1
execute if entity @s[predicate=tid:item/igneous_feet] run scoreboard players add @s igneous 1

#Count up the nearby burning enemies
execute if score @s igneous matches 1.. as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check

#Multiply the scores together to determine the damage bonus
scoreboard players operation @s igneous *= bonus value

#Give the damage bonus attribute if applicable
execute if score @s igneous matches 1 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 2 add
execute if score @s igneous matches 2 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 4 add
execute if score @s igneous matches 3 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 6 add
execute if score @s igneous matches 4 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 8 add
execute if score @s igneous matches 5 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 10 add
execute if score @s igneous matches 6 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 12 add
execute if score @s igneous matches 7 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 14 add
execute if score @s igneous matches 8 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 16 add
execute if score @s igneous matches 9 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 18 add
execute if score @s igneous matches 10 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 20 add
execute if score @s igneous matches 11..12 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 24 add
execute if score @s igneous matches 13..14 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 28 add
execute if score @s igneous matches 15..16 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 32 add
execute if score @s igneous matches 17..18 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 36 add
execute if score @s igneous matches 19..20 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 40 add
execute if score @s igneous matches 21..25 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 50 add
execute if score @s igneous matches 26..30 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 60 add
execute if score @s igneous matches 31.. run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f bonus 80 add
