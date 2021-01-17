#Play a sound effect
playsound minecraft:item.trident.thunder block @a

#Scan down for the explosion
function tid:misc/power_drill_scan

#Spawn some particles
particle minecraft:flame ~ ~0.9 ~ 0.6 0.6 0.6 0 25

#Reduce the number of charges left and reset the timer
scoreboard players remove @s tries 1
scoreboard players set @s counter1 40
