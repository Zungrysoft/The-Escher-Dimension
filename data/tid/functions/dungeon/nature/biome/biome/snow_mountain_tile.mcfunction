#Place water
fill ~ 56 ~ ~ ~1 ~ water replace air

#If water was placed too high, get rid of it all, as that means there should be no water here
execute if block ~ 57 ~ water run fill ~ 56 ~ ~ ~1 ~ air

#Generate terrain
execute if block ~ ~1 ~ air run setblock ~ ~ ~ grass_block
fill ~ ~ ~ ~ ~-3 ~ dirt replace air
fill ~ ~-4 ~ ~ ~-22 ~ stone replace air

#Snow
execute if block ~ ~ ~ grass_block run setblock ~ ~1 ~ snow

#Maybe place a spawner (reduced spawners in this biome)
execute if predicate tid:random_biome if predicate tid:random_10 if block ~ ~ ~ grass_block if block ~ ~1 ~ snow positioned ~ ~2 ~ run function tid:misc/nature_random_spawner
