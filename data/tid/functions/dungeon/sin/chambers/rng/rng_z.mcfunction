#Next direction
#y_absolute is the absolute y value instead of the y value relative to the structure
#It is used to determine how broken the rooms should look
scoreboard players operation y_absolute value = @s y
scoreboard players set ycount value 0
function tid:dungeon/sin/chambers/rng/rng_y

#Recurse
scoreboard players add zcount value 1
execute unless score zcount value > zmax value positioned ~ ~ ~1 run function tid:dungeon/sin/chambers/rng/rng_z
