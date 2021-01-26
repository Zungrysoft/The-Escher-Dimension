#Play a spooky sound effect
playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ .5 1.8

#Give wither
effect give @p minecraft:wither 3 2

#Make sure they understand what is going on
tellraw @s "Your shield is cursed!"
