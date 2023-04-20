#Generate terrain
scoreboard players set roughness value 8000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Replace top layer of water with ice
fill 2001 56 2001 2062 56 2062 ice replace water
