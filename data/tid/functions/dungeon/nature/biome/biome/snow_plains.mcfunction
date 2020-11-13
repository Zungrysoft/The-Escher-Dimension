#Generate terrain
scoreboard players set roughness value 8000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Replace top layer of water with ice
fill 2000 56 2000 2064 56 2064 ice replace water
