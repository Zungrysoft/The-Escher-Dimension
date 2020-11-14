#Generate terrain
scoreboard players set roughness value 19000
scoreboard players set falloff value 35
function tid:dungeon/nature/biome/terrain

#Fill magma on the bottom layer
fill 2006 50 2006 2057 50 2057 magma_block replace air
