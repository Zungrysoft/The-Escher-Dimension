#Check for nearby arrows to fizzle
execute as @e[type=minecraft:arrow,distance=0..4] at @s run function tid:gameplay/arrow_fizzle
