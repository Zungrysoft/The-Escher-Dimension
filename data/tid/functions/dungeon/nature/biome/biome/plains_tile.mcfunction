#Place water
fill ~ 56 ~ ~ ~1 ~ water replace air

#If water was placed too high, get rid of it all, as that means there should be no water here
execute if block ~ 57 ~ water run fill ~ 56 ~ ~ ~1 ~ air

#Generate terrain
execute if block ~ ~1 ~ air run setblock ~ ~ ~ grass_block
fill ~ ~ ~ ~ ~-3 ~ dirt replace air
fill ~ ~-4 ~ ~ ~-22 ~ stone replace air

#Maybe place grass
execute if predicate tid:random_50 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ grass
execute if predicate tid:random_05 if block ~ ~ ~ grass_block run setblock ~ ~1 ~ tall_grass[half=lower]
execute if block ~ ~1 ~ tall_grass run setblock ~ ~2 ~ tall_grass[half=upper]

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~ ~ grass_block if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
