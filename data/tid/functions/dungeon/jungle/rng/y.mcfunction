#Add cines
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~1 ~ ~ mossy_cobblestone run setblock ~ ~ ~ vine[east=true]
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~ ~ ~1 mossy_cobblestone run setblock ~ ~ ~ vine[south=true]
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~-1 ~ ~ mossy_cobblestone run setblock ~ ~ ~ vine[west=true]
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~ ~ ~-1 mossy_cobblestone run setblock ~ ~ ~ vine[north=true]
#Convert mossy cobblestone to regular cobblestone based on distance from center
execute if block ~ ~ ~ #tid:jungle_blocks run function tid:dungeon/jungle/rng/mossy_cobblestone
#Convert random blocks to valuable treasure blocks
execute if block ~ ~ ~ mossy_cobblestone run function tid:dungeon/jungle/rng/treasure
#Remove most of the torches
execute if block ~ ~ ~ torch run function tid:dungeon/jungle/rng/torch
#Add cobwebs
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~ ~-1 ~ #tid:jungle_blocks run function tid:dungeon/jungle/rng/cobweb
execute if predicate tid:random_04 if block ~ ~ ~ air if block ~ ~1 ~ #tid:jungle_blocks run function tid:dungeon/jungle/rng/cobweb

scoreboard players add ycount value 1
execute unless score ycount value matches 77.. positioned ~ ~1 ~ run function tid:dungeon/jungle/rng/y