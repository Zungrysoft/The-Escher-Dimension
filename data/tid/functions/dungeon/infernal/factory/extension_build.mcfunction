#Build the segment
fill ~-15 ~ ~-15 ~15 ~-15 ~15 nether_bricks
execute positioned ~ ~128 ~ run fill ~-15 ~ ~-15 ~15 ~-15 ~15 yellow_wool

#Recurse
execute if block ~ ~-32 ~ nether_bricks positioned ~ ~-16 ~ run function tid:dungeon/infernal/factory/extension_build
execute if block ~ ~-32 ~ basalt positioned ~ ~-16 ~ run function tid:dungeon/infernal/factory/extension_build
execute if block ~ ~-32 ~ #tid:air_or_liquid positioned ~ ~-16 ~ run function tid:dungeon/infernal/factory/extension_build
