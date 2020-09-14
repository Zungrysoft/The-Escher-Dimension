#Add vines
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~1 ~ ~ mossy_cobblestone run setblock ~ ~ ~ vine[east=true]
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~ ~ ~1 mossy_cobblestone run setblock ~ ~ ~ vine[south=true]
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~-1 ~ ~ mossy_cobblestone run setblock ~ ~ ~ vine[west=true]
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~ ~ ~-1 mossy_cobblestone run setblock ~ ~ ~ vine[north=true]

#Add cobwebs
execute if predicate tid:random_01 if block ~ ~ ~ air if block ~ ~-1 ~ #tid:jungle_blocks run setblock ~ ~ ~ cobweb
execute if predicate tid:random_01 if block ~ ~ ~ air if block ~ ~1 ~ #tid:jungle_blocks run setblock ~ ~ ~ cobweb

#Convert random blocks to valuable treasure blocks
execute if block ~ ~ ~ mossy_cobblestone run function tid:dungeon/jungle/rng/treasure

#Remove most of the torches
execute if predicate tid:random_90 if block ~ ~ ~ torch run setblock ~ ~ ~ air
execute if predicate tid:random_90 if block ~ ~ ~ wall_torch run setblock ~ ~ ~ air

#Randomize jungle blocks
execute if predicate tid:random_50 if block ~ ~ ~ #tid:jungle_base_blocks run function tid:dungeon/jungle/rng/jungle_blocks

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/jungle/rng/rng_y