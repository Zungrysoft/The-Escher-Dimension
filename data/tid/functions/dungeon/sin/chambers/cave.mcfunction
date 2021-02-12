#Carve one cave segment
setblock ~5 ~ ~5 minecraft:structure_block{name: "tid:sin/chambers/cave", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate structure block
setblock ~5 ~1 ~5 redstone_block
