#This file handles all of the weapons that only function under specific circumstances.

#Takes the damage reduction attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_damage modifier remove 21183d2f-4e05-4f9a-9e04-8ee579aab87f

#Reset value
scoreboard players set temp value 0

#Skeleton Bane
execute if entity @s[nbt={SelectedItem:{tag:{skeleton_bane:1b}}}] unless entity @e[type=skeleton,distance=0..10] unless entity @e[type=wither_skeleton,distance=0..10] unless entity @e[type=stray,distance=0..10] run scoreboard players set temp value 1

#Babirusan Shiv
execute if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] unless data entity @s Inventory[{id:"minecraft:gold_ingot"}] run scoreboard players set temp value 1

#Give the damage reduction attribute if applicable
execute if score temp value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 21183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage -1000 add


#Other stuff related to these weapons

#Babirusan Shiv
execute if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] if score @s damage_dealt matches 1.. run clear @p gold_ingot 1

#The damage_dealt scoreboard value is reset in main, so other functions can use it