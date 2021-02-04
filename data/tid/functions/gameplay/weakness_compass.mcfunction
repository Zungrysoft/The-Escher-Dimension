#Apply the weakness effect if the player is holding the compass
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{weakness_compass:1b}}]}] as @e[type=#tid:monster,distance=0..12] at @s run function tid:gameplay/weakness_compass_effect
execute if entity @s[nbt={SelectedItem:{tag:{weakness_compass:1b}}}] as @e[type=#tid:monster,distance=0..12] at @s run function tid:gameplay/weakness_compass_effect
