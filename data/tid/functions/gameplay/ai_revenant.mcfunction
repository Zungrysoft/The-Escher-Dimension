#Color the glowing effect
team join glow

#Do the glowing effect if the player is holding the Oracle Rod
execute if entity @a[nbt={SelectedItem:{tag:{revenant_finder:1b}}}] run effect give @s glowing 1 0 true