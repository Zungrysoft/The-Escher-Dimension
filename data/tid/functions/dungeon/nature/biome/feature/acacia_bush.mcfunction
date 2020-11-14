#Fill leaves
fill ~-1 ~ ~-1 ~ ~ ~ acacia_leaves[persistent=false]
execute if predicate tid:random_50 run fill ~-1 ~-1 ~-1 ~ ~-1 ~ acacia_leaves[persistent=false] replace air

#Decide where log goes
scoreboard players set pick value 0
execute if predicate tid:random_50 run scoreboard players add pick value 1
execute if predicate tid:random_50 run scoreboard players add pick value 2

#Add log
execute if score pick value matches 0 run setblock ~ ~ ~ acacia_wood
execute if score pick value matches 0 run setblock ~ ~1 ~ acacia_leaves[persistent=false]
execute if score pick value matches 1 run setblock ~-1 ~ ~ acacia_wood
execute if score pick value matches 1 run setblock ~-1 ~1 ~ acacia_leaves[persistent=false]
execute if score pick value matches 2 run setblock ~ ~ ~-1 acacia_wood
execute if score pick value matches 2 run setblock ~ ~1 ~-1 acacia_leaves[persistent=false]
execute if score pick value matches 3 run setblock ~-1 ~ ~-1 acacia_wood
execute if score pick value matches 3 run setblock ~-1 ~1 ~-1 acacia_leaves[persistent=false]

#Maybe add additional leaves
execute if predicate tid:random_20 positioned ~-1 ~1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ acacia_leaves[persistent=false]
execute if predicate tid:random_20 positioned ~ ~1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ acacia_leaves[persistent=false]
execute if predicate tid:random_20 positioned ~-1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ acacia_leaves[persistent=false]
execute if predicate tid:random_20 positioned ~ ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ acacia_leaves[persistent=false]
