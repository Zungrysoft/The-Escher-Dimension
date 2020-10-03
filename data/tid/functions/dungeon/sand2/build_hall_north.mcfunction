#Generate the hall
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand2/hall_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~6 minecraft:red_sandstone replace minecraft:black_concrete
