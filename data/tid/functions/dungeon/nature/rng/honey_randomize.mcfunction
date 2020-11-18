#Air
execute if predicate tid:random_15 if block ~ ~-1 ~ air run setblock ~ ~ ~ air

#Honey Block
execute if predicate tid:random_30 run setblock ~ ~ ~ honey_block

#Grass block
execute if predicate tid:random_25 if block ~ ~1 ~ air run setblock ~ ~ ~ grass_block
execute if block ~ ~ ~ grass_block positioned ~ ~1 ~ run function tid:dungeon/nature/rng/flower_randomize

#Bee Nest
execute if predicate tid:random_05 if block ~ ~ ~-1 air run setblock ~ ~ ~ bee_nest[facing=north,honey_level=1]
execute if predicate tid:random_05 if block ~ ~ ~1 air run setblock ~ ~ ~ bee_nest[facing=south,honey_level=2]
execute if predicate tid:random_05 if block ~-1 ~ ~ air run setblock ~ ~ ~ bee_nest[facing=west,honey_level=3]
execute if predicate tid:random_05 if block ~1 ~ ~ air run setblock ~ ~ ~ bee_nest[facing=east,honey_level=4]
