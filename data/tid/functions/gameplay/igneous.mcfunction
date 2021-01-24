#Takes the damage bonus attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_damage modifier remove 21483d2f-4e05-4f9a-9e04-8ea571aac87f

#Reset value
scoreboard players set bonus value 0
scoreboard players set calc value 2

#Make the check for sword (counts double)
execute if entity @s[nbt={SelectedItem:{tag:{igneous:1b}}}] as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check
scoreboard players operation bonus value *= calc value

#Make the check for armor
execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{igneous:1b}}]}] as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check
execute if entity @s[nbt={Inventory:[{Slot:101b, tag:{igneous:1b}}]}] as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check
execute if entity @s[nbt={Inventory:[{Slot:102b, tag:{igneous:1b}}]}] as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check
execute if entity @s[nbt={Inventory:[{Slot:103b, tag:{igneous:1b}}]}] as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check

#Give the damage reduction attribute if applicable
execute if score bonus value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 2 add
execute if score bonus value matches 2 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 4 add
execute if score bonus value matches 3 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 6 add
execute if score bonus value matches 4 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 8 add
execute if score bonus value matches 5 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneos 10 add
execute if score bonus value matches 6 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 12 add
execute if score bonus value matches 7 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 14 add
execute if score bonus value matches 8 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 16 add
execute if score bonus value matches 9 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 18 add
execute if score bonus value matches 10 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 20 add
execute if score bonus value matches 11..12 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 24 add
execute if score bonus value matches 13..14 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 28 add
execute if score bonus value matches 15..16 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 32 add
execute if score bonus value matches 17..18 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 36 add
execute if score bonus value matches 19..20 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 40 add
execute if score bonus value matches 21..25 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 50 add
execute if score bonus value matches 26..30 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 60 add
execute if score bonus value matches 31.. run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 80 add

#If the player lands an attack with the bonus damage, play some neat sounds and particles
execute if score @s damage_dealt matches 1.. if score bonus value matches 1.. run function tid:gameplay/igneous_effects
