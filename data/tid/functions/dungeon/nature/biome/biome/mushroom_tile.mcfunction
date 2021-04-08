#Place water
fill ~ 56 ~ ~ ~1 ~ water replace air

#If water was placed too high, get rid of it all, as that means there should be no water here
execute if block ~ 57 ~ water run fill ~ 56 ~ ~ ~1 ~ air

#Generate terrain
execute if block ~ ~1 ~ air run setblock ~ ~ ~ mycelium
fill ~ ~ ~ ~ ~-3 ~ dirt replace air
fill ~ ~-4 ~ ~ ~-22 ~ stone replace air

#Maybe place a mushroom
execute if predicate tid:random_02 if block ~ ~ ~ mycelium run setblock ~ ~1 ~ brown_mushroom
execute if predicate tid:random_03 if block ~ ~ ~ mycelium run setblock ~ ~1 ~ red_mushroom

#Maybe place a giant mushroom
execute if predicate tid:random_01 if block ~ ~ ~ mycelium positioned ~ ~1 ~ if blocks ~-3 ~2 ~-3 ~3 ~7 ~3 1033 1 1001 all if block ~ ~9 ~ air run function tid:dungeon/nature/biome/feature/giant_mushroom_brown
execute if predicate tid:random_01 if block ~ ~ ~ mycelium positioned ~ ~1 ~ if blocks ~-3 ~2 ~-3 ~3 ~7 ~3 1033 1 1001 all if block ~ ~9 ~ air run function tid:dungeon/nature/biome/feature/giant_mushroom_red

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~ ~ mycelium if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
