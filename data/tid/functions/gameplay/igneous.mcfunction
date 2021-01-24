#Takes the damage bonus attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_damage modifier remove 21483d2f-4e05-4f9a-9e04-8ea571aac87f

#Reset value
scoreboard players set bonus value 0

#Make the check
execute if entity @s[nbt={SelectedItem:{tag:{igneous:1b}}}] as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check

#Give the damage reduction attribute if applicable
execute if score bonus value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 21483d2f-4e05-4f9a-9e04-8ea571aac87f igneous 5 add

#If the player lands an attack with the bonus damage, play some neat sounds and particles
execute if score @s damage_dealt matches 1.. if score bonus value matches 1 run function tid:gameplay/igneous_effects
