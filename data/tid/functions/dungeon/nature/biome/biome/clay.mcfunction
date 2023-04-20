#Generate terrain
scoreboard players set roughness value 60000
scoreboard players set falloff value 20
function tid:dungeon/nature/biome/terrain

# Magma lake
fill 2001 50 2001 2062 50 2062 magma_block replace clay

# Remove fire near the edge so the dungeon doesn't burn down
fill 2001 50 2001 2062 80 2006 air replace fire
fill 2001 50 2001 2006 80 2062 air replace fire

fill 2001 50 2057 2062 80 2062 air replace fire
fill 2057 50 2001 2062 80 2062 air replace fire
