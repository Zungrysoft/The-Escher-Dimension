#Apply the levitation effect if the player is holding the item
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{fire_diamond:1b}}]}] as @e[type=#tid:living,distance=0..12] at @s run function tid:gameplay/fire_diamond_check
execute if entity @s[nbt={SelectedItem:{tag:{fire_diamond:1b}}}] as @e[type=#tid:living,distance=0..12] at @s run function tid:gameplay/fire_diamond_check
