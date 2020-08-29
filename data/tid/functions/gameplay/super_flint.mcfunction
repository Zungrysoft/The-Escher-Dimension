#Handles the super flint item dropped by Ninja Piglins
#/give @p flint{super_flint:1b}

#Takes the extreme weakness effect from the player first. The next command gives it back if it should still be active
execute as @a[nbt={ActiveEffects:[{Amplifier:127b,Id:18b}]}] run effect clear @s weakness

#Prevents the player from using the shiv if they are out of gold
execute as @a[nbt={SelectedItem:{tag:{super_flint:1b}}}] unless data entity @s Inventory[{id:"minecraft:gold_ingot"}] run effect give @s weakness 999999 127 true

#Takes the gold from the player when they use the shiv
execute as @a[nbt={SelectedItem:{tag:{super_flint:1b}}}] if score @s damage_dealt matches 1.. run clear @p gold_ingot 1

#The damage_dealt scoreboard value is reset in main, so other functions can use it