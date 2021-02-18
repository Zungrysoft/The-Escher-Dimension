#If it hits a wall, it fizzles out

#Sound
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 0.03 2

#Particle
execute unless entity @s[tag=mutant] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 5
execute if entity @s[tag=mutant] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 5

#Delete
kill @s
