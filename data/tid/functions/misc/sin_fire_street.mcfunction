#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

execute if predicate tid:random_50 run setblock ~ ~ ~ fire
execute if predicate tid:random_50 run setblock ~1 ~ ~ fire
execute if predicate tid:random_50 run setblock ~ ~ ~1 fire
execute if predicate tid:random_33 run setblock ~1 ~ ~2 fire
execute if predicate tid:random_50 run setblock ~-1 ~ ~ fire
execute if predicate tid:random_50 run setblock ~ ~ ~-2 fire
execute if predicate tid:random_33 run setblock ~-1 ~ ~-1 fire
execute if predicate tid:random_33 run setblock ~1 ~ ~-1 fire
execute if predicate tid:random_33 run setblock ~-1 ~ ~2 fire

execute if predicate tid:random_33 run setblock ~2 ~-1 ~ netherrack
execute if predicate tid:random_33 run setblock ~-2 ~-1 ~2 netherrack
execute if predicate tid:random_33 run setblock ~-1 ~-1 ~-2 netherrack