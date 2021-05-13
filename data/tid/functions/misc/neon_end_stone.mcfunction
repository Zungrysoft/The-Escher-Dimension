#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#End stone
execute positioned ~ ~ ~ if predicate tid:random_50 run setblock ~ ~ ~ end_stone
execute positioned ~ ~ ~ if predicate tid:random_15 run fill ~ ~ ~ ~ ~1 ~ end_stone

execute positioned ~1 ~ ~ if predicate tid:random_66 run setblock ~ ~ ~ end_stone
execute positioned ~1 ~ ~ if predicate tid:random_15 run fill ~ ~ ~ ~ ~1 ~ end_stone

execute positioned ~ ~ ~1 if predicate tid:random_50 run setblock ~ ~ ~ end_stone
execute positioned ~ ~ ~1 if predicate tid:random_15 run fill ~ ~ ~ ~ ~1 ~ end_stone

execute positioned ~1 ~ ~1 if predicate tid:random_50 run setblock ~ ~ ~ end_stone
execute positioned ~1 ~ ~1 if predicate tid:random_15 run fill ~ ~ ~ ~ ~1 ~ end_stone
