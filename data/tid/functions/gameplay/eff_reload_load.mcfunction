#Put the item in slot 0 to ensure proper copying
data modify storage itemhold Items[0].Slot set value 0

#Set the charged value
data modify storage itemhold Items[0].tag.Charged set value 1b

#Put the arrow in
data modify storage itemhold Items[0].tag.ChargedProjectiles set value [{id:"minecraft:arrow",Count:1b}]

#Check for multishot
execute if data storage itemhold Items[0].tag.Enchantments[{id:"minecraft:multishot"}] run data modify storage itemhold Items[0].tag.ChargedProjectiles set value [{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}]
