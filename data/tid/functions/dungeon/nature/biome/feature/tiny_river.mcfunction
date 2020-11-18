#Set up scoreboard
scoreboard players set moves_count value 35

#Generate the river
execute positioned ~ ~-1 ~ if block ~ ~ ~ grass_block run function tid:dungeon/nature/biome/feature/tiny_river_recurse

#Build the bridges
execute as @e[name="bridge_marker"] at @s run function tid:dungeon/nature/biome/feature/tiny_river_bridges
