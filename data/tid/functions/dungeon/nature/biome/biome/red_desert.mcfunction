#Generate terrain
scoreboard players set roughness value 8000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Add water
fill 2006 50 2006 2057 55 2057 water replace air
