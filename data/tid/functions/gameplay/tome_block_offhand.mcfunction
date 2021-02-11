execute store result score temp value run clear @s chiseled_quartz_block 0

#Check for using the book with insufficient ammo
execute unless score @s item_used matches 1 unless score temp value matches 1.. run function tid:gameplay/fail_sound_2

#Check for using the book with sufficient ammo
execute unless score @s item_used matches 1 if score temp value matches 1.. run function tid:gameplay/tome_block_use
