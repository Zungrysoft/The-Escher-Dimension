#Generate terrain
scoreboard players set roughness value 20000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Fill lava on the bottom layer
fill 2006 50 2006 2057 50 2057 lava replace air

#Enclose lava so it doesn't spill out
fill 2006 58 2006 2057 72 2006 diorite replace lava
fill 2006 58 2006 2006 72 2057 diorite replace lava
fill 2057 58 2057 2057 72 2006 diorite replace lava
fill 2057 58 2057 2006 72 2057 diorite replace lava
