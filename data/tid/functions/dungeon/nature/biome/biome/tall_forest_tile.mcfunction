#Place water
fill ~ 56 ~ ~ ~ ~ water replace air

#If water was placed too high, get rid of it all, as that means there should be no water here
execute if block ~ 57 ~ water run fill ~ 56 ~ ~ ~ ~ air

#Generate terrain
execute if block ~ ~ ~ air run setblock ~ ~-1 ~ grass_block
fill ~ ~-1 ~ ~ ~-4 ~ dirt replace air
fill ~ ~-5 ~ ~ ~-22 ~ stone replace air

#Maybe place grass
execute if predicate tid:random_20 if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ grass
execute if predicate tid:random_10 if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ fern
execute if predicate tid:random_05 if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ large_fern[half=lower]
execute if block ~ ~ ~ large_fern run setblock ~ ~1 ~ large_fern[half=upper]

#Maybe place a tree
execute if predicate tid:random_10 if block ~ ~-1 ~ grass_block if blocks ~-1 ~2 ~-1 ~1 ~4 ~1 1033 1 1001 all run function tid:dungeon/nature/biome/feature/stack_tree
