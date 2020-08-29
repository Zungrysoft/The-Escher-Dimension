#Pick item
setblock ~1 ~-1 ~-2 minecraft:structure_block{name: "tid:infernal/sewer/outflow_east", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure block
setblock ~1 ~0 ~-2 minecraft:redstone_block

#Reserve space
fill ~1 ~127 ~-2 ~5 ~130 ~2 minecraft:blue_wool