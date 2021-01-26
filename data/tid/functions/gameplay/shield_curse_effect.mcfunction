#If the player has their shield out, put down some ominous particles
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] anchored eyes run particle dust 0 0 0 1 ^0.4 ^ ^0.5 0.1 0.3 0.1 0 3 force @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] anchored eyes run particle dust 0 0 0 1 ^-0.4 ^ ^0.5 0.1 0.3 0.1 0 3 force @s

#If the player blocks a hit, give them wither
execute if score @s use_shield matches 1.. run function tid:gameplay/shield_curse_effect_give
