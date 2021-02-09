#Check for nearby arrows to fizzle
execute as @e[type=minecraft:arrow,nbt={pickup:0b},distance=0..4] at @s run function tid:gameplay/arrow_fizzle
