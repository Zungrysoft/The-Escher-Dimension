#Delete the command block
fill ~ ~ ~ ~ ~1 ~ air

#Place the stairwell
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/stairwell", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~ ~1 ~ redstone_block