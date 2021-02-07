#Sound effect
playsound entity.generic.eat player @s ~ ~ ~ 0.8 1.2

#Restore the hunger
effect give @s saturation 1 0 true

#Particle
particle dust 0.4 0.2 0 1 ~ ~1 ~ 0.5 1 0.5 0 10

#Count on scoreboard
scoreboard players remove @s pending_hunger 1
