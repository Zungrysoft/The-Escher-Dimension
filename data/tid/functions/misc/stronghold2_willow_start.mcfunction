#Limit the number of leaves each willow can generate
scoreboard players set oak_leaves value 6

#Spawn the base
execute if predicate tid:random_70 if block ~1 ~ ~ #tid:jungle_overwrite run setblock ~1 ~ ~ oak_leaves
execute if predicate tid:random_60 if block ~-1 ~ ~ #tid:jungle_overwrite run setblock ~-1 ~ ~ oak_leaves
execute if predicate tid:random_50 if block ~ ~ ~1 #tid:jungle_overwrite run setblock ~ ~ ~1 oak_leaves
execute if predicate tid:random_40 if block ~ ~ ~-1 #tid:jungle_overwrite run setblock ~ ~ ~-1 oak_leaves

#Decide which direction to start in
scoreboard players set temp9 value -1
execute if block ~1 ~ ~ oak_leaves run scoreboard players set temp9 value 0
execute if block ~-1 ~ ~ oak_leaves run scoreboard players set temp9 value 1
execute if block ~ ~ ~1 oak_leaves run scoreboard players set temp9 value 2
execute if block ~ ~ ~-1 oak_leaves run scoreboard players set temp9 value 3

#First piece of wood
execute unless score temp9 value matches -1 run setblock ~ ~ ~ oak_wood
execute unless score temp9 value matches -1 if block ~ ~-1 ~ #tid:jungle_overwrite run setblock ~ ~-1 ~ oak_leaves

#Start
execute if score temp9 value matches 0 positioned ~1 ~ ~ run function tid:misc/stronghold2_willow_recurse
execute if score temp9 value matches 1 positioned ~-1 ~ ~ run function tid:misc/stronghold2_willow_recurse
execute if score temp9 value matches 2 positioned ~ ~ ~1 run function tid:misc/stronghold2_willow_recurse
execute if score temp9 value matches 3 positioned ~ ~ ~-1 run function tid:misc/stronghold2_willow_recurse
