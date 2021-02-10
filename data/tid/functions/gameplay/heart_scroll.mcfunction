#Figure out how many heart scrolls the player has in their inventory
execute store result score temp value run clear @s minecraft:mojang_banner_pattern{health_scroll:1b} 0

#Figure out how many health penalty items the player has in their inventory
execute store result score temp2 value run clear @s #tid:weapons{health_penalty:1b} 0
scoreboard players operation temp value -= temp2 value

#See if it matches the number of heart scrolls they had last frame
#If it is different, update their potion effect
#We have to do it this way because just giving them the effect every frame causes the extra hearts to become empty
execute unless score @s health_boost = temp value run function tid:gameplay/heart_scroll_effect
