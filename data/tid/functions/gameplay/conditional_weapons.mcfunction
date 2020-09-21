#This file handles all of the weapons that only function under specific circumstances.

#Takes the extreme weakness effect from the player first. The other commands give it back if it should still be active
execute as @a[nbt={ActiveEffects:[{Amplifier:127b,Id:18b}]}] run effect clear @s weakness

#Reset value
scoreboard players set temp value 0

#Skeleton Bane
execute if entity @s[nbt={SelectedItem:{tag:{skeleton_bane:1b}}}] unless entity @e[type=skeleton,distance=0..10] unless entity @e[type=wither_skeleton,distance=0..10] unless entity @e[type=stray,distance=0..10] run scoreboard players set temp value 1

#Babirusan Shiv
execute if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] unless data entity @s Inventory[{id:"minecraft:gold_ingot"}] run scoreboard players set temp value 1

#Give the effect
execute if score temp value matches 1 run effect give @s weakness 999999 127 true




#Other stuff related to these weapons

#Babirusan Shiv
execute if entity @s[nbt={SelectedItem:{tag:{super_flint:1b}}}] if score @s damage_dealt matches 1.. run clear @p gold_ingot 1

#The damage_dealt scoreboard value is reset in main, so other functions can use it