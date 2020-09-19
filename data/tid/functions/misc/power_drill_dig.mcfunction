#Play a sound effect
playsound minecraft:item.trident.thunder block @a

#Scan down for the explosion
function tid:misc/power_drill_scan

#Spawn some particles
#particle dust 0.9 0.9 0.9 4 ~ ~ ~
#particle dust 0.9 0.9 0.9 4 ~1 ~1 ~
#particle dust 0.9 0.9 0.9 4 ~ ~1 ~1
#particle dust 0.9 0.9 0.9 4 ~-1 ~1 ~
#particle dust 0.9 0.9 0.9 4 ~ ~1 ~-1

#Reduce the number of charges left and reset the timer
scoreboard players remove @s tries 1
scoreboard players set @s counter1 40