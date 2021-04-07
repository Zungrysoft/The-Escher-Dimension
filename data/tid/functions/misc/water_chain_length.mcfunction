#Blocks
execute positioned ~ ~ ~ run function tid:misc/water_ruin_block
execute positioned ~1 ~ ~ run function tid:misc/water_ruin_block
execute positioned ~-1 ~ ~ run function tid:misc/water_ruin_block
execute positioned ~ ~1 ~ run function tid:misc/water_ruin_block
execute positioned ~ ~-1 ~ run function tid:misc/water_ruin_block

#Seagrass
execute positioned ~ ~2 ~ if predicate tid:random_25 if block ~ ~-1 ~ #tid:jungle_solid_blocks if block ~ ~ ~ water run setblock ~ ~ ~ seagrass
execute positioned ~1 ~1 ~ if predicate tid:random_25 if block ~ ~-1 ~ #tid:jungle_solid_blocks if block ~ ~ ~ water run setblock ~ ~ ~ seagrass
execute positioned ~-1 ~1 ~ if predicate tid:random_25 if block ~ ~-1 ~ #tid:jungle_solid_blocks if block ~ ~ ~ water run setblock ~ ~ ~ seagrass
