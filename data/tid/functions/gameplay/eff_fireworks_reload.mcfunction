#Tracking variable
scoreboard players set temp value 0

#Check to make sure the player has some fireworks in their inventory
execute store result score temp2 value run clear @s minecraft:firework_rocket 0

#Check the slot for crossbows
execute if score temp2 value matches 1.. if data entity @s Inventory[{Slot:1b,id:"minecraft:crossbow"}] unless data entity @s Inventory[{Slot:1b,tag:{Charged:1b}}] run function tid:gameplay/eff_fireworks_reload_run

#If at least one crossbow was reloaded, play a sound effect
execute if score temp value matches 1 run playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 1 1
execute if score temp value matches 1 run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 1.3
