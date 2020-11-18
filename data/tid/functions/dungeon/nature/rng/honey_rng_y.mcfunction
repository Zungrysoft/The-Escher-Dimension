#Do the randomization
execute if block ~ ~ ~ honeycomb_block run function tid:dungeon/nature/rng/honey_randomize

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/nature/rng/honey_rng_y

