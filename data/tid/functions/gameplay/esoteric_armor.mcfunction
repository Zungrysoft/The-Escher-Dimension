#Check for wearing full esoteric armor
execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{esoteric:1b}},{Slot:101b, tag:{esoteric:1b}},{Slot:102b, tag:{esoteric:1b}},{Slot:103b, tag:{esoteric:1b}}]}] run effect give @e[type=#tid:monster,distance=..25] minecraft:glowing 2
