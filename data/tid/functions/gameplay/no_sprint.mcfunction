#Wearer cannot sprint while wearing this item
execute if score @s sprint matches 1.. if entity @s[predicate=tid:item/no_sprint] run effect give @s poison 1 2 true
scoreboard players reset @s sprint
