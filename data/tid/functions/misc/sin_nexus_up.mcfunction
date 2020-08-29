#Pick a ruins
setblock ~-1 ~12 ~-1 minecraft:structure_block{name: "tid:sin/chambers/nexus_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate it
setblock ~-1 ~13 ~-1 redstone_block

#Remove the floor
fill ~ ~12 ~ ~8 ~13 ~8 air

#Reserve space
fill ~-1 ~-116 ~-1 ~9 ~-101 ~9 blue_wool