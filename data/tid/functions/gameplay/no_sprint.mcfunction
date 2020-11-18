#Wearer cannot sprint while wearing this item
execute if score @s sprint matches 1.. if entity @s[nbt={Inventory:[{Slot:100b,tag:{no_sprint:1b}}]}] run effect give @s wither 1 1 true
scoreboard players reset @s sprint

