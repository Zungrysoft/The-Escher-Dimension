#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/junction_cross_open", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~136 ~4 blue_wool