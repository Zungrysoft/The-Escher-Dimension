#Vines and cobwebs
execute if predicate tid:random_04 if block ~ ~ ~ air run function tid:dungeon/jungle/rng/feature

#Convert random blocks to valuable treasure blocks
execute if predicate tid:random_diamond if block ~ ~ ~ mossy_cobblestone run function tid:dungeon/jungle/rng/treasure

#Randomize jungle blocks
execute if predicate tid:random_50 run execute if block ~ ~ ~ #tid:jungle_base_blocks run function tid:dungeon/jungle/rng/jungle_blocks

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/jungle/rng/rng_y