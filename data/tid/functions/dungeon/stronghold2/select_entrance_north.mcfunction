#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/entrance_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~139 ~20 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~20 minecraft:stone replace minecraft:black_concrete

#We're done here
kill @s

