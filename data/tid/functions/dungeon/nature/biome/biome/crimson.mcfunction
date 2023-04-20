#Generate terrain
scoreboard players set roughness value 19000
scoreboard players set falloff value 35
function tid:dungeon/nature/biome/terrain

#Fill magma on the bottom layer
fill 2001 50 2001 2062 50 2062 magma_block replace air
