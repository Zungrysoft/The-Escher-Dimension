#Barrel
setblock ~ ~ ~ barrel[facing=up] destroy
execute if predicate tid:random_40 run setblock ~ ~ ~ barrel[facing=north]
execute if predicate tid:random_25 run setblock ~ ~ ~ barrel[facing=south]
execute if predicate tid:random_20 run setblock ~ ~ ~ barrel[facing=west]
execute if predicate tid:random_15 run setblock ~ ~ ~ barrel[facing=east]

#Sign
execute positioned ~ ~1 ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_sign

#Copy data to storage
data modify storage gravecopy Items set from entity @s Inventory

#Remove items that aren't in this barrel
data remove storage minecraft:gravecopy Items[{Slot:9b}]
data remove storage minecraft:gravecopy Items[{Slot:10b}]
data remove storage minecraft:gravecopy Items[{Slot:11b}]
data remove storage minecraft:gravecopy Items[{Slot:12b}]
data remove storage minecraft:gravecopy Items[{Slot:13b}]
data remove storage minecraft:gravecopy Items[{Slot:14b}]
data remove storage minecraft:gravecopy Items[{Slot:15b}]
data remove storage minecraft:gravecopy Items[{Slot:16b}]
data remove storage minecraft:gravecopy Items[{Slot:17b}]
data remove storage minecraft:gravecopy Items[{Slot:18b}]
data remove storage minecraft:gravecopy Items[{Slot:19b}]
data remove storage minecraft:gravecopy Items[{Slot:20b}]
data remove storage minecraft:gravecopy Items[{Slot:21b}]
data remove storage minecraft:gravecopy Items[{Slot:22b}]
data remove storage minecraft:gravecopy Items[{Slot:23b}]
data remove storage minecraft:gravecopy Items[{Slot:24b}]
data remove storage minecraft:gravecopy Items[{Slot:25b}]
data remove storage minecraft:gravecopy Items[{Slot:26b}]
data remove storage minecraft:gravecopy Items[{Slot:27b}]
data remove storage minecraft:gravecopy Items[{Slot:28b}]
data remove storage minecraft:gravecopy Items[{Slot:29b}]
data remove storage minecraft:gravecopy Items[{Slot:30b}]
data remove storage minecraft:gravecopy Items[{Slot:31b}]
data remove storage minecraft:gravecopy Items[{Slot:32b}]
data remove storage minecraft:gravecopy Items[{Slot:33b}]
data remove storage minecraft:gravecopy Items[{Slot:34b}]
data remove storage minecraft:gravecopy Items[{Slot:35b}]
data remove storage minecraft:gravecopy Items[{Slot:35b}]

#Remove vanishing items
data remove storage minecraft:gravecopy Items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]

#Change the item slots
data modify storage minecraft:gravecopy Items[0].Slot set value 0b
data modify storage minecraft:gravecopy Items[1].Slot set value 1b
data modify storage minecraft:gravecopy Items[2].Slot set value 2b
data modify storage minecraft:gravecopy Items[3].Slot set value 3b
data modify storage minecraft:gravecopy Items[4].Slot set value 4b
data modify storage minecraft:gravecopy Items[5].Slot set value 5b
data modify storage minecraft:gravecopy Items[6].Slot set value 6b
data modify storage minecraft:gravecopy Items[7].Slot set value 7b
data modify storage minecraft:gravecopy Items[8].Slot set value 8b
data modify storage minecraft:gravecopy Items[9].Slot set value 9b
data modify storage minecraft:gravecopy Items[10].Slot set value 10b
data modify storage minecraft:gravecopy Items[11].Slot set value 11b
data modify storage minecraft:gravecopy Items[12].Slot set value 12b
data modify storage minecraft:gravecopy Items[13].Slot set value 13b
data modify storage minecraft:gravecopy Items[14].Slot set value 14b
data modify storage minecraft:gravecopy Items[15].Slot set value 15b
data modify storage minecraft:gravecopy Items[16].Slot set value 16b
data modify storage minecraft:gravecopy Items[17].Slot set value 17b
data modify storage minecraft:gravecopy Items[18].Slot set value 18b
data modify storage minecraft:gravecopy Items[19].Slot set value 19b
data modify storage minecraft:gravecopy Items[20].Slot set value 20b
data modify storage minecraft:gravecopy Items[21].Slot set value 21b
data modify storage minecraft:gravecopy Items[22].Slot set value 22b
data modify storage minecraft:gravecopy Items[23].Slot set value 23b
data modify storage minecraft:gravecopy Items[24].Slot set value 24b
data modify storage minecraft:gravecopy Items[25].Slot set value 25b
data modify storage minecraft:gravecopy Items[26].Slot set value 26b

#Copy it over
data modify block ~ ~ ~ Items set from storage minecraft:gravecopy Items

#Remove the storage again
data remove storage minecraft:gravecopy Items
