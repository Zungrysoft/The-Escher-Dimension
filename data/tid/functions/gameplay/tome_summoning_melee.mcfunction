execute store result score temp value run clear @s rotten_flesh 0

#Check for using the book with insufficient ammo
execute if entity @s[nbt={SelectedItem:{tag:{tome_summoning:1b}}}] if score @s tome_use matches 1.. unless score temp value matches 10.. run function tid:gameplay/fail_sound_2

#Check for using the book with sufficient ammo
execute if entity @s[nbt={SelectedItem:{tag:{tome_summoning:1b}}}] if score @s tome_use matches 1.. if score temp value matches 10.. run function tid:gameplay/tome_summoning_use

#If the player tries to use this item at all, set the score so the offhand tome doesn't also get used
execute if entity @s[nbt={SelectedItem:{tag:{tome_summoning:1b}}}] if score @s tome_use matches 1.. run scoreboard players set @s item_used 1
