#Handles the Mysterious Orb item
#/give @p heart_of_the_sea{display:{Name:'[{"text":"Mysterious Orb","italic":false,"color":"blue","bold":true}]',Lore:['[{"text":"Costs iron to use","italic":false,"color":"red"}]','[{"text":"in other dimensions.","italic":false,"color":"red"}]']},float_orb:1b,mystery_sound:0b} 1

#Takes the high levitation effect from the player first. The next command gives it back if it should still be active
execute as @s[nbt={ActiveEffects:[{Amplifier:8b,Id:25b}]}] run effect clear @s levitation

#Test whether to give the levitation effect
scoreboard players set temp value 0
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{float_orb:1b}}]}] run scoreboard players set temp value 2
execute if entity @s[nbt={SelectedItem:{tag:{float_orb:1b}}}] run scoreboard players set temp value 1

#Run the effect
execute if score temp value matches 1..2 run effect give @s levitation 999999 8 true

#Play the sound effect
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:0b}}]}] run playsound minecraft:block.note_block.chime block @a ~ ~ ~ .4 .5
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:1b}}]}] run playsound minecraft:block.note_block.iron_xylophone block @a ~ ~ ~ .4 .5
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:2b}}]}] run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ .4 .5
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:3b}}]}] run playsound minecraft:block.note_block.didgeridoo block @a ~ ~ ~ .4 .5
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:4b}}]}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ .4 .5
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:5b}}]}] run playsound minecraft:block.note_block.banjo block @a ~ ~ ~ .4 .5
execute if score temp value matches 2 if entity @s[nbt={Inventory:[{Slot:-106b, tag:{mystery_sound:6b}}]}] run playsound minecraft:block.note_block.flute block @a ~ ~ ~ .4 .5

execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:0b}}}] run playsound minecraft:block.note_block.chime block @a ~ ~ ~ .4 .5
execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:1b}}}] run playsound minecraft:block.note_block.iron_xylophone block @a ~ ~ ~ .4 .5
execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:2b}}}] run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ .4 .5
execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:3b}}}] run playsound minecraft:block.note_block.didgeridoo block @a ~ ~ ~ .4 .5
execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:4b}}}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ .4 .5
execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:5b}}}] run playsound minecraft:block.note_block.banjo block @a ~ ~ ~ .4 .5
execute if score temp value matches 1 if entity @s[nbt={SelectedItem:{tag:{mystery_sound:6b}}}] run playsound minecraft:block.note_block.flute block @a ~ ~ ~ .4 .5
