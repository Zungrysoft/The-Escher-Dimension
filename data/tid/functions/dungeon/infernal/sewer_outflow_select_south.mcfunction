#Pick item
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/outflow_south", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block

#Reserve space
fill ~ ~128 ~ ~4 ~131 ~4 minecraft:blue_wool