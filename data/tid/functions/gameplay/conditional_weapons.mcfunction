#This file handles all of the weapons that only function under specific circumstances.

#Takes the damage reduction attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_damage modifier remove 21183d2f-4e05-4f9a-9e04-8ee579aab87f

#Reset value
scoreboard players set cancel value 0

#Skeleton Bane
execute if entity @s[nbt={SelectedItem:{tag:{skeleton_bane:1b}}}] unless entity @e[type=skeleton,distance=0..20] unless entity @e[type=wither_skeleton,distance=0..20] unless entity @e[type=stray,distance=0..20] run scoreboard players set cancel value 1

#Babirusan Shiv
execute if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] unless data entity @s Inventory[{id:"minecraft:gold_ingot"}] run scoreboard players set cancel value 1

#Igneous Pickaxe
execute if entity @s[nbt={SelectedItem:{tag:{igneous:1b}}}] run function tid:gameplay/igneous_check

#Give the damage reduction attribute if applicable
execute if score cancel value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 21183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage -1000 add


#Other stuff related to these weapons

#Babirusan Shiv
execute if score @s damage_dealt matches 1.. if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] run clear @p gold_ingot 1

#Silver Slim's Chopper
execute if score @s damage_dealt matches 1.. if entity @s[nbt={SelectedItem:{tag:{healing_axe:1b}}}] if predicate tid:random_25 run function tid:gameplay/restore_hunger

#The damage_dealt scoreboard value is reset in item_checks, so other functions can use it
