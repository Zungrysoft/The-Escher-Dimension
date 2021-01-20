#Destroy the leggings
replaceitem entity @s armor.legs air

#Grant the effect
effect give @s minecraft:fire_resistance 300 0

#Play the sound effect
playsound minecraft:item.totem.use player @a ~ ~ ~

#Tell the player in chat
tellraw @s "Your pants have burned up."
