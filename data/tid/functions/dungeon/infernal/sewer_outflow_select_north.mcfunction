#Pick item
setblock ~-2 ~-1 ~-5 minecraft:structure_block{name: "tid:infernal/sewer/outflow_north", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure block
setblock ~-2 ~0 ~-5 minecraft:redstone_block

#Reserve space
fill ~-2 ~127 ~-5 ~2 ~130 ~-1 minecraft:blue_wool