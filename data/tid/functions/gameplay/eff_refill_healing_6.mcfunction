#First, check to see how many empty bottles the player has in that slot
execute store result score temp value run data get entity @s Inventory[{Slot:5b,id:"minecraft:glass_bottle"}].Count

#Give the player their potion
execute if score temp value matches 1.. run replaceitem entity @s hotbar.5 minecraft:potion{Potion:"minecraft:healing"}

#Do other effects like particles and sounds
execute if score temp value matches 1.. run function tid:gameplay/eff_refill_effects
