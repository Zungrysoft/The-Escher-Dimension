#Check if the player is holding it
execute if entity @s[nbt={SelectedItem:{tag:{tome_barrier:1b}}}] run function tid:gameplay/tome_barrier_effect
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{tome_barrier:1b}}]}] run function tid:gameplay/tome_barrier_effect
