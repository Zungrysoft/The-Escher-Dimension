#Next direction
scoreboard players set ycount value 0
function tid:dungeon/nature/rng/honey_rng_y

#Recurse
scoreboard players add zcount value 1
execute unless score zcount value > zmax value positioned ~ ~ ~1 run function tid:dungeon/nature/rng/honey_rng_z

