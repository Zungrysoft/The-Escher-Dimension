#Trunk
fill ~ ~2 ~ ~ ~ ~ oak_log

#Leaves
fill ~-2 ~ ~-2 ~2 ~1 ~2 oak_leaves[persistent=false] replace air
fill ~ ~2 ~-1 ~ ~3 ~1 oak_leaves[persistent=false] replace air
fill ~-1 ~2 ~ ~1 ~3 ~ oak_leaves[persistent=false] replace air

#Randomly edit some leaves
execute if predicate tid:random_50 run setblock ~2 ~1 ~2 air
execute if predicate tid:random_50 run setblock ~-2 ~1 ~2 air
execute if predicate tid:random_50 run setblock ~2 ~1 ~-2 air
execute if predicate tid:random_50 run setblock ~-2 ~1 ~-2 air
execute if predicate tid:random_50 run setblock ~1 ~2 ~1 oak_leaves[persistent=false]
execute if predicate tid:random_50 run setblock ~-1 ~2 ~1 oak_leaves[persistent=false]
execute if predicate tid:random_50 run setblock ~1 ~2 ~-1 oak_leaves[persistent=false]
execute if predicate tid:random_50 run setblock ~-1 ~2 ~-1 oak_leaves[persistent=false]