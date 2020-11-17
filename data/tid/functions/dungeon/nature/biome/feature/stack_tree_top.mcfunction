#Trunk
fill ~ ~ ~ ~ ~2 ~ stripped_oak_log

#Leaves
fill ~1 ~ ~1 ~-1 ~ ~-1 birch_leaves[persistent=false] replace air
fill ~1 ~3 ~1 ~-1 ~3 ~-1 birch_leaves[persistent=false] replace air
fill ~-1 ~1 ~-2 ~1 ~2 ~2 birch_leaves[persistent=false] replace air
fill ~-2 ~1 ~-1 ~2 ~2 ~1 birch_leaves[persistent=false] replace air

#Randomly edit some leaves
execute if predicate tid:random_50 positioned ~1 ~3 ~1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~3 ~-1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-1 ~3 ~1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-1 ~3 ~-1 if block ~ ~ ~ birch_leaves run setblock ~ ~ ~ air

#Safeguard recursion
scoreboard players set pick value 1
