#Summon the farie
function tid:custom_mobs/farie

#Play a sound effect
playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1.2 1.6
playsound minecraft:block.nether_wart.break hostile @a ~ ~ ~ 0.7 0.5

#Count up the scoreboard
scoreboard players add @s counter1 1
