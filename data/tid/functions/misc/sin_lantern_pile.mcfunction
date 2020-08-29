#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

execute if predicate tid:random_33 run setblock ~ ~ ~ lantern
execute if predicate tid:random_33 run setblock ~1 ~ ~ lantern
execute if predicate tid:random_33 run setblock ~ ~ ~1 lantern
execute if predicate tid:random_33 run setblock ~1 ~-1 ~1 lantern
execute if predicate tid:random_33 run setblock ~-1 ~ ~ lantern
execute if predicate tid:random_33 run setblock ~ ~ ~-1 lantern
execute if predicate tid:random_33 run setblock ~-1 ~-1 ~-1 lantern
execute if predicate tid:random_33 run setblock ~1 ~-1 ~-1 lantern
execute if predicate tid:random_33 run setblock ~-1 ~-1 ~1 lantern

execute if predicate tid:random_10 run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 gilded_blackstone replace blackstone