#Generate terrain
scoreboard players set roughness value 8000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Replace top layer of water with ice
fill 2006 56 2006 2057 56 2057 ice replace water
