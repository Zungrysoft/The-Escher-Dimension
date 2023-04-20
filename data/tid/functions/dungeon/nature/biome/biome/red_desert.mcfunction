#Generate terrain
scoreboard players set roughness value 8000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Add water
fill 2001 50 2001 2062 55 2062 water replace air
