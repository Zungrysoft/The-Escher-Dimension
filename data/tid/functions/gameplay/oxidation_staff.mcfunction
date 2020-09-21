execute store result score temp value run clear @s gunpowder 0

execute if entity @s[nbt={SelectedItem:{tag:{oxidation_staff:1b}}}] if score @s carrot_stick_use matches 1.. if score temp value matches 4.. run function tid:gameplay/oxidation_staff_use
execute if entity @s[nbt={SelectedItem:{tag:{oxidation_staff:1b}}}] if score @s carrot_stick_use matches 1.. unless score temp value matches 4.. run function tid:gameplay/fail_sound_2