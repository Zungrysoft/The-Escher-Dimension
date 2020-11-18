#Place inital logs
fill ~ ~ ~ ~-1 ~5 ~-1 birch_wood

#Remove grass underneath
fill ~ ~ ~ ~-1 ~-1 ~-1 dirt replace grass_block

#Add some random logs at the base
execute positioned ~1 ~ ~ run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~1 ~ ~-1 run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~-2 ~ ~ run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~-2 ~ ~-1 run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~-1 ~ ~1 run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~-1 ~ ~1 run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~ ~ ~-2 run function tid:dungeon/nature/biome/feature/canopy_tree_base
execute positioned ~-1 ~ ~-2 run function tid:dungeon/nature/biome/feature/canopy_tree_base

#Decide on the height
scoreboard players set choice value 0
execute if predicate tid:random_50 run scoreboard players add choice value 1
execute if predicate tid:random_50 run scoreboard players add choice value 2

execute if score choice value matches 0 positioned ~ ~5 ~ run function tid:dungeon/nature/biome/feature/canopy_tree_top
execute if score choice value matches 1 positioned ~ ~6 ~ run function tid:dungeon/nature/biome/feature/canopy_tree_top
execute if score choice value matches 2 positioned ~ ~7 ~ run function tid:dungeon/nature/biome/feature/canopy_tree_top
execute if score choice value matches 3 positioned ~ ~8 ~ run function tid:dungeon/nature/biome/feature/canopy_tree_top
