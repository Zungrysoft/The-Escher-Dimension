#Place water
fill ~ 56 ~ ~ ~2 ~ water replace air

#If water was placed too high, get rid of it all, as that means there should be no water here
execute if block ~ 57 ~ water run fill ~ 56 ~ ~ ~2 ~ air

#Generate terrain
execute if block ~ ~2 ~ air run setblock ~ ~1 ~ grass_block
fill ~ ~1 ~ ~ ~-3 ~ dirt replace air
fill ~ ~-4 ~ ~ ~-22 ~ stone replace air

#Lilac Bushes
execute if block ~ ~1 ~ grass_block if block ~-1 ~1 ~ water run setblock ~ ~1 ~ podzol
execute if block ~ ~1 ~ grass_block if block ~-2 ~1 ~ water run setblock ~ ~1 ~ podzol
execute if block ~ ~1 ~ grass_block if block ~ ~1 ~-1 water run setblock ~ ~1 ~ podzol
execute if block ~ ~1 ~ grass_block if block ~ ~1 ~-2 water run setblock ~ ~1 ~ podzol
execute if block ~ ~1 ~ grass_block if block ~-1 ~1 ~-1 water run setblock ~ ~1 ~ podzol
execute if block ~ ~1 ~ podzol run setblock ~ ~2 ~ lilac[half=lower]
execute if block ~ ~1 ~ podzol run setblock ~ ~3 ~ lilac[half=upper]

#Foliage
execute if predicate tid:random_20 if block ~ ~2 ~ air run setblock ~ ~2 ~ grass
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ allium
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ blue_orchid
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ lily_of_the_valley
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ orange_tulip
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ pink_tulip
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ red_tulip
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ poppy
execute if predicate tid:random_03 if block ~ ~2 ~ air run setblock ~ ~2 ~ cornflower

#Mini Trees
execute if predicate tid:random_04 if block ~ ~1 ~ grass_block positioned ~ ~2 ~ if blocks ~ ~2 ~ ~ ~4 ~ 1033 1 1001 all run function tid:dungeon/nature/biome/feature/mini_tree

#Canopy Trees
execute if predicate tid:random_005 if block ~ ~1 ~ grass_block if block ~-1 ~1 ~ grass_block if block ~ ~1 ~-1 grass_block if block ~-1 ~1 ~-1 grass_block positioned ~ ~2 ~ if blocks ~-2 ~2 ~-2 ~ ~4 ~ 1033 1 1001 all run function tid:dungeon/nature/biome/feature/canopy_tree

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~1 ~ grass_block if block ~ ~2 ~ air positioned ~ ~2 ~ run function tid:misc/nature_random_spawner
