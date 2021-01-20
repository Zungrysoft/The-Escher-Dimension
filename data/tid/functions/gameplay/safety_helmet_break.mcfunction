#Destroy the helmet
replaceitem entity @s armor.head air

#Grant the effects
effect give @s minecraft:instant_health 1 4
effect give @s minecraft:resistance 30 1
effect give @s minecraft:strength 30 1

#Play the sound effect
playsound minecraft:item.totem.use player @a ~ ~ ~

#Tell the player in chat
tellraw @s "Your helmet has broken."
