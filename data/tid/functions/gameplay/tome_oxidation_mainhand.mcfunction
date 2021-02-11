execute store result score temp value run clear @s gunpowder 0

#Check for using the book with insufficient ammo
execute unless score temp value matches 4.. run function tid:gameplay/fail_sound_2

#Check for using the book with sufficient ammo
execute if score temp value matches 4.. run function tid:gameplay/tome_oxidation_use

#If the player tries to use this item at all, set the score so the offhand tome doesn't also get used
scoreboard players set @s item_used 1
