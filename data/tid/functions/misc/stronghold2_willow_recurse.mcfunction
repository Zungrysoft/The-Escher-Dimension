#Place the block
setblock ~ ~ ~ oak_leaves

#Count the recursion step
scoreboard players remove oak_leaves value 1

#Maybe shift over a block if it can shift in that direction and there is a supporting block perpendicular to it
scoreboard players set temp value 0

execute if predicate tid:random_15 if block ~1 ~ ~ #tid:jungle_overwrite if block ~ ~ ~1 #tid:stone_brick_blocks run scoreboard players set temp value 1
execute if predicate tid:random_15 if block ~1 ~ ~ #tid:jungle_overwrite if block ~ ~ ~-1 #tid:stone_brick_blocks run scoreboard players set temp value 1

execute if predicate tid:random_15 if block ~-1 ~ ~ #tid:jungle_overwrite if block ~ ~ ~1 #tid:stone_brick_blocks run scoreboard players set temp value 2
execute if predicate tid:random_15 if block ~-1 ~ ~ #tid:jungle_overwrite if block ~ ~ ~-1 #tid:stone_brick_blocks run scoreboard players set temp value 2

execute if predicate tid:random_15 if block ~ ~ ~1 #tid:jungle_overwrite if block ~1 ~ ~ #tid:stone_brick_blocks run scoreboard players set temp value 3
execute if predicate tid:random_15 if block ~ ~ ~1 #tid:jungle_overwrite if block ~-1 ~ ~ #tid:stone_brick_blocks run scoreboard players set temp value 3

execute if predicate tid:random_15 if block ~ ~ ~-1 #tid:jungle_overwrite if block ~1 ~ ~ #tid:stone_brick_blocks run scoreboard players set temp value 4
execute if predicate tid:random_15 if block ~ ~ ~-1 #tid:jungle_overwrite if block ~-1 ~ ~ #tid:stone_brick_blocks run scoreboard players set temp value 4

#Maybe put some single blocks to the side
execute if predicate tid:random_15 positioned ~1 ~ ~ if block ~ ~ ~ #tid:jungle_overwrite run setblock ~ ~ ~ oak_leaves
execute if predicate tid:random_15 positioned ~-1 ~ ~ if block ~ ~ ~ #tid:jungle_overwrite run setblock ~ ~ ~ oak_leaves
execute if predicate tid:random_15 positioned ~ ~ ~1 if block ~ ~ ~ #tid:jungle_overwrite run setblock ~ ~ ~ oak_leaves
execute if predicate tid:random_15 positioned ~ ~ ~-1 if block ~ ~ ~ #tid:jungle_overwrite run setblock ~ ~ ~ oak_leaves

#Handle branching movement recursion
execute if score oak_leaves value matches 1.. if score temp value matches 1 positioned ~1 ~ ~ run function tid:misc/stronghold2_willow_recurse
execute if score oak_leaves value matches 1.. if score temp value matches 2 positioned ~-1 ~ ~ run function tid:misc/stronghold2_willow_recurse
execute if score oak_leaves value matches 1.. if score temp value matches 3 positioned ~ ~ ~1 run function tid:misc/stronghold2_willow_recurse
execute if score oak_leaves value matches 1.. if score temp value matches 4 positioned ~ ~ ~-1 run function tid:misc/stronghold2_willow_recurse

#Decide whether to continue branching down
scoreboard players set temp2 value 1
#If we're shifting in another direction, don't generate down
execute if score temp value matches 1.. run scoreboard players set temp2 value 0
#But there's a chance for it to generate down anyway
execute if predicate tid:random_30 run scoreboard players set temp2 value 1
#But don't generate down if we're out of blocks
execute unless score oak_leaves value matches 1.. run scoreboard players set temp2 value 0
#Also make sure the space below is available to generate in
execute unless block ~ ~-1 ~ #tid:jungle_overwrite run scoreboard players set temp2 value 0

#Recurse
execute if score temp2 value matches 1 positioned ~ ~-1 ~ run function tid:misc/stronghold2_willow_recurse



