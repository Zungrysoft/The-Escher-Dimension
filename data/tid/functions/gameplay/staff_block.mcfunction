execute store result score temp value run clear @s chiseled_quartz_block 0

execute if entity @s[nbt={SelectedItem:{tag:{block_staff:1b}}}] if score @s carrot_stick_use matches 1.. unless score temp value matches 1.. run function tid:gameplay/fail_sound_2
execute if entity @s[nbt={SelectedItem:{tag:{block_staff:1b}}}] if score @s carrot_stick_use matches 1.. if score temp value matches 1.. run function tid:gameplay/staff_block_use