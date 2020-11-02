#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/secret", posX: -2, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Fill in the floor
fill ~-2 ~-1 ~-3 ~2 ~-1 ~2 stone_bricks replace stone

#Mark this area as generated
fill ~-2 ~128 ~-3 ~2 ~131 ~2 minecraft:blue_wool replace minecraft:orange_wool
