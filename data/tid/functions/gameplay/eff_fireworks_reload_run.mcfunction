#Copy the crossbow to storage
data modify storage itemhold Items append from entity @s Inventory[{Slot:1b}]

#Copy the fireworks to storage
function tid:gameplay/eff_fireworks_reload_copy

#Load the crossbow
function tid:gameplay/eff_fireworks_reload_load

#Copy the data to a shulker box
setblock ~ 0 ~ shulker_box
data modify block ~ 0 ~ Items append from storage itemhold Items[0]
data remove storage minecraft:itemhold Items
data remove storage minecraft:rockethold Items

#Copy the data back to the player
loot replace entity @s hotbar.1 1 mine ~ 0 ~ bedrock{drop_items:1b}

#Replace the shulker box with bedrock again
setblock ~ 0 ~ bedrock

#Mark the temp value for the sound effect
scoreboard players set temp value 1
