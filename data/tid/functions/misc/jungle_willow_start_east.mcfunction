#Limit the number of leaves each willow can generate
scoreboard players set jungle_leaves value 8

#Spawn the base and start to generate
setblock ~ ~ ~ jungle_wood
setblock ~1 ~ ~ jungle_leaves
execute positioned ~1 ~-1 ~ run function tid:misc/jungle_willow_recurse