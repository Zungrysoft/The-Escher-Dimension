#If it hits a wall, it fizzles out
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 0.03 2
particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 5
kill @s
