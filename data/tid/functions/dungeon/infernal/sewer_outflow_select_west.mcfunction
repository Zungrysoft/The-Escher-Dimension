#Pick item
setblock ~-5 ~-1 ~-2 minecraft:structure_block{name: "tid:infernal/sewer/outflow_west", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure block
setblock ~-5 ~0 ~-2 minecraft:redstone_block

#Reserve space
fill ~-5 ~127 ~-2 ~-1 ~130 ~2 minecraft:blue_wool