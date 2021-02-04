#Apply the slowness effect if the player is holding the clock
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{slow_clock:1b}}]}] as @e[type=#tid:monster,distance=0..12] at @s run function tid:gameplay/slow_clock_effect
execute if entity @s[nbt={SelectedItem:{tag:{slow_clock:1b}}}] as @e[type=#tid:monster,distance=0..12] at @s run function tid:gameplay/slow_clock_effect
