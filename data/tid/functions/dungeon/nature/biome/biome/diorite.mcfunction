#Generate terrain
scoreboard players set roughness value 20000
scoreboard players set falloff value 40
function tid:dungeon/nature/biome/terrain

#Fill lava on the bottom layer
fill 2001 50 2001 2062 50 2062 lava replace air

#Enclose lava so it doesn't spill out
fill 2001 42 2001 2062 72 2002 diorite replace lava
fill 2001 42 2001 2002 72 2062 diorite replace lava
fill 2062 42 2062 2061 72 2002 diorite replace lava
fill 2062 42 2062 2002 72 2061 diorite replace lava
