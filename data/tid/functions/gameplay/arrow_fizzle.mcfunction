#If it hits a wall, it fizzles out
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 0.08 2
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 3
kill @s
