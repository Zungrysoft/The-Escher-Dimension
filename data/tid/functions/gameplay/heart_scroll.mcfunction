#Figure out how many heart scrolls the player has in their inventory
execute store result score temp value run clear @s minecraft:mojang_banner_pattern{HideFlags:65535} 0

#See if it matches the number of heart scrolls they had last frame
#If it is different, update their potion effect
#We have to do it this way because just giving them the effect every frame causes the extra hearts to become empty
execute unless score @s heart_boost = temp value run function tid:gameplay/heart_scroll_effect
