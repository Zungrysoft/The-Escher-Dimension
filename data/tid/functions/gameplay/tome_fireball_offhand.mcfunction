execute store result score temp value run clear @s fire_charge 0

#Check for using the book with insufficient ammo
execute unless score @s item_used matches 1 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{tome_fireball:1b}}]}] if score @s tome_use matches 1.. unless score temp value matches 1.. run function tid:gameplay/fail_sound_2

#Check for using the book with sufficient ammo
execute unless score @s item_used matches 1 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{tome_fireball:1b}}]}] if score @s tome_use matches 1.. if score temp value matches 1.. run function tid:gameplay/tome_fireball_use
