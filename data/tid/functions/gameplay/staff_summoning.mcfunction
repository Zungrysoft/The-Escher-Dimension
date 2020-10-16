execute store result score temp value run clear @s rotten_flesh 0

execute if entity @s[nbt={SelectedItem:{tag:{summoning_staff:1b}}}] if score @s carrot_stick_use matches 1.. unless score temp value matches 10.. run function tid:gameplay/fail_sound_2
execute if entity @s[nbt={SelectedItem:{tag:{summoning_staff:1b}}}] if score @s carrot_stick_use matches 1.. if score temp value matches 10.. run function tid:gameplay/staff_summoning_use