#Canopy tree base
execute if predicate tid:random_50 run fill ~ ~ ~ ~ ~ ~ birch_wood
execute if predicate tid:random_33 run fill ~ ~ ~ ~ ~1 ~ birch_wood
execute if predicate tid:random_05 run fill ~ ~ ~ ~ ~2 ~ birch_wood
fill ~ ~ ~ ~ ~-3 ~ birch_wood replace air

#Nearby flowers
execute if predicate tid:random_50 positioned ~1 ~ ~ run function tid:dungeon/nature/biome/feature/tall_flower
execute if predicate tid:random_50 positioned ~-1 ~ ~ run function tid:dungeon/nature/biome/feature/tall_flower
execute if predicate tid:random_50 positioned ~ ~ ~1 run function tid:dungeon/nature/biome/feature/tall_flower
execute if predicate tid:random_50 positioned ~ ~ ~-1 run function tid:dungeon/nature/biome/feature/tall_flower
