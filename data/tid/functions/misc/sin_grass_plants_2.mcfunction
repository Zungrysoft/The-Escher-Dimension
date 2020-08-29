#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

execute if predicate tid:random_33 run setblock ~ ~ ~ grass
execute if predicate tid:random_25 run setblock ~ ~ ~ red_tulip

execute if predicate tid:random_33 run setblock ~1 ~ ~ grass
execute if predicate tid:random_25 run setblock ~1 ~ ~ white_tulip

execute if predicate tid:random_33 run setblock ~ ~ ~1 grass
execute if predicate tid:random_25 run setblock ~ ~ ~1 red_tulip

execute if predicate tid:random_33 run setblock ~1 ~ ~1 grass
execute if predicate tid:random_25 run setblock ~1 ~ ~1 pink_tulip

execute if predicate tid:random_33 run setblock ~-1 ~ ~ grass
execute if predicate tid:random_25 run setblock ~-1 ~ ~ pink_tulip

execute if predicate tid:random_33 run setblock ~ ~ ~-1 grass
execute if predicate tid:random_25 run setblock ~ ~ ~-1 white_tulip

execute if predicate tid:random_33 run setblock ~-1 ~ ~-1 grass
execute if predicate tid:random_25 run setblock ~-1 ~ ~-1 orange_tulip

execute if predicate tid:random_33 run setblock ~1 ~ ~-1 grass
execute if predicate tid:random_25 run setblock ~1 ~ ~-1 red_tulip

execute if predicate tid:random_33 run setblock ~-1 ~ ~1 grass
execute if predicate tid:random_25 run setblock ~-1 ~ ~1 orange_tulip

