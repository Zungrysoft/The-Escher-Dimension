#Trunk
fill ~ ~ ~ ~-1 ~-3 ~-1 birch_wood

#Wart
fill ~-2 ~-1 ~-2 ~1 ~1 ~1 birch_leaves[persistent=false] replace air
fill ~-3 ~ ~-3 ~2 ~ ~2 birch_leaves[persistent=false] replace air

#Randomly edit some leaves
execute if predicate tid:random_50 positioned ~-3 ~ ~-3 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-3 ~ ~2 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~2 ~ ~-3 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~2 ~ ~2 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~1 ~-2 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~1 ~1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~1 ~-2 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~1 ~1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~-1 ~-2 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~-1 ~1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~-1 ~-2 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~-1 ~1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
