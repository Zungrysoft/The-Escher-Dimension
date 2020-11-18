#Do the randomization
execute if block ~ ~-1 ~ grass_block run function tid:dungeon/nature/rng/flower_randomize

#Recurse
scoreboard players add zcount value 1
execute unless score zcount value > zmax value positioned ~ ~ ~1 run function tid:dungeon/nature/rng/flower_rng_z

