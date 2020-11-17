#Place blocks
fill ~ ~ ~ ~ ~1 ~ stripped_oak_log
fill ~1 ~ ~1 ~-1 ~ ~-1 birch_leaves[persistent=false] replace air
fill ~ ~1 ~1 ~ ~1 ~-1 birch_leaves[persistent=false] replace air
fill ~1 ~1 ~ ~-1 ~1 ~ birch_leaves[persistent=false] replace air

#Recurse
scoreboard players set pick value 0
execute if predicate tid:random_80 if block ~ ~7 ~ air run scoreboard players set pick value 1
execute if score pick value matches 1 positioned ~ ~2 ~ run function tid:dungeon/nature/biome/feature/stack_tree_middle
execute if score pick value matches 0 positioned ~ ~2 ~ run function tid:dungeon/nature/biome/feature/stack_tree_top
