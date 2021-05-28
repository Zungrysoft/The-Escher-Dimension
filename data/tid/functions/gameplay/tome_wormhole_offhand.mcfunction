execute store result score temp value run clear @s fire_charge 0

#Check for using the book with insufficient ammo
execute unless score @s item_used matches 1 if score @s tome_use matches 3.. unless score temp value matches 3.. run function tid:gameplay/fail_sound_2

#Check for using the book with sufficient ammo
execute unless score @s item_used matches 1 if score @s tome_use matches 3.. if score temp value matches 3.. run function tid:gameplay/tome_wormhole_use
