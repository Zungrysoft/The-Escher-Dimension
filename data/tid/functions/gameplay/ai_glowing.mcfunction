#Color the glowing effect
team join glow

#Do the glowing effect if the player is holding the Oracle Rod
execute if entity @a[nbt={SelectedItem:{tag:{glow_stick:1b}}},distance=0..15] run effect give @s glowing 1 0 true
execute if entity @a[nbt={Inventory:[{Slot:-106b,tag:{glow_stick:1b}}]},distance=0..15] run effect give @s glowing 1 0 true
execute if entity @a[nbt={Inventory:[{Slot:103b,tag:{glow_stick:1b}}]},distance=0..15] run effect give @s glowing 1 0 true
