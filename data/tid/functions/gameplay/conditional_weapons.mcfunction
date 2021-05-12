#This file handles all of the weapons that only function under specific circumstances.

#Takes the damage reduction attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_damage modifier remove 21183d2f-4e05-4f9a-9e04-8ee579aab87f

#Reset value
scoreboard players set cancel value 0

#Blade of Dal-Marceus (Skeleton Bane)
execute if entity @s[predicate=tid:item/skeleton_bane] unless entity @e[type=skeleton,distance=0..20] unless entity @e[type=wither_skeleton,distance=0..20] unless entity @e[type=stray,distance=0..20] run scoreboard players set cancel value 1

#Babirusan Shiv
execute if entity @s[predicate=tid:item/super_flint] unless data entity @s Inventory[{id:"minecraft:gold_ingot"}] run scoreboard players set cancel value 1

#Two-handed Weapons
execute if entity @s[predicate=tid:item/two_handed] if data entity @s Inventory[{Slot:-106b}] run scoreboard players set cancel value 1

#Give the damage reduction attribute if applicable
execute if score cancel value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 21183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage -1000 add


#Other stuff related to these weapons

#Babirusan Shiv
execute if score @s damage_dealt matches 1.. if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] run clear @s gold_ingot 1

#Tip Sword
execute if score @s damage_dealt matches 1.. if entity @s[nbt={SelectedItem:{tag:{tip_sword:1b}}}] as @e[type=#tid:living,distance=2.7..6,nbt=!{HurtTime:0s}] at @s run function tid:gameplay/tip_sword_effect

#The damage_dealt scoreboard value is reset in item_checks, so other functions can use it
