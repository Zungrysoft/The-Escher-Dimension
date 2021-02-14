#Delete the Command Block
setblock ~ ~ ~ water
setblock ~ ~1 ~ air

#Add the lily pads
execute if predicate tid:random_40 run setblock ~-1 ~1 ~-1 lily_pad
execute if predicate tid:random_40 run setblock ~0 ~1 ~-1 lily_pad
execute if predicate tid:random_40 run setblock ~1 ~1 ~-1 lily_pad

execute if predicate tid:random_40 run setblock ~-1 ~1 ~ lily_pad
execute if predicate tid:random_40 run setblock ~0 ~1 ~ lily_pad
execute if predicate tid:random_40 run setblock ~1 ~1 ~ lily_pad

execute if predicate tid:random_40 run setblock ~-1 ~1 ~1 lily_pad
execute if predicate tid:random_40 run setblock ~0 ~1 ~1 lily_pad
execute if predicate tid:random_40 run setblock ~1 ~1 ~1 lily_pad
