#Carve one cave segment
setblock ~11 ~ ~11 minecraft:structure_block{name: "tid:sin/cave", posX: -11, posY: 0, posZ: -11, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate structure block
setblock ~11 ~1 ~11 redstone_block
