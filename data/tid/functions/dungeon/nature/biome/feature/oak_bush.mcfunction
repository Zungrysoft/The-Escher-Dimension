#Clear out any foliage nearby
fill ~-1 ~0 ~-2 ~1 ~2 ~2 air replace fern
fill ~-2 ~0 ~-1 ~2 ~2 ~1 air replace fern
fill ~-1 ~0 ~-2 ~1 ~2 ~2 air replace grass
fill ~-2 ~0 ~-1 ~2 ~2 ~1 air replace grass
fill ~-1 ~0 ~-2 ~1 ~2 ~2 air replace large_fern
fill ~-2 ~0 ~-1 ~2 ~2 ~1 air replace large_fern
fill ~-1 ~0 ~-2 ~1 ~2 ~2 air replace lily_of_the_valley
fill ~-2 ~0 ~-1 ~2 ~2 ~1 air replace lily_of_the_valley

#Trunk
setblock ~ ~ ~ oak_wood

#Leaves
fill ~1 ~1 ~1 ~-1 ~1 ~-1 oak_leaves[persistent=false] replace air
fill ~-2 ~0 ~-2 ~2 ~0 ~2 oak_leaves[persistent=false] replace air
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 oak_leaves[persistent=false] replace air

#Randomly edit some leaves
execute if predicate tid:random_50 positioned ~1 ~1 ~1 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~1 ~-1 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-1 ~1 ~1 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-1 ~1 ~-1 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air

execute if predicate tid:random_50 positioned ~2 ~ ~2 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~2 ~ ~-2 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~ ~2 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~ ~-2 if block ~ ~ ~ oak_leaves run setblock ~ ~ ~ air

execute if predicate tid:random_05 positioned ~ ~2 ~ if block ~ ~ ~ air run setblock ~ ~ ~ oak_leaves[persistent=false]