#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Decide whether to put in the block
execute if predicate tid:random_40 run setblock ~ ~ ~ netherrack

#Maybe put a spawner instead
execute if predicate tid:random_10 run function tid:misc/sin_chambers_random_spawner
