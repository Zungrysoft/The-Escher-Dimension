#Divide fs by 2 and set hs
scoreboard players set calc value 2
scoreboard players operation fs value /= calc value
scoreboard players operation hs value = fs value
scoreboard players operation hs value /= calc value

#Multiply the roughness by the falloff so the deltas will get less intense as distances shrink
scoreboard players set calc value 100
scoreboard players operation roughness value *= falloff value
scoreboard players operation roughness value /= calc value

#Diamond step
scoreboard players operation x value = hs value
scoreboard players operation z value = hs value
function tid:dungeon/nature/biome/diamond_x

#Square step
scoreboard players set x value 0
scoreboard players operation z value = hs value
function tid:dungeon/nature/biome/square1_x

scoreboard players operation x value = hs value
scoreboard players set z value 0
function tid:dungeon/nature/biome/square2_x
