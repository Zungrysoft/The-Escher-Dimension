#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/pool_large", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~31 ~-128 ~31 minecraft:blue_wool

#We're done here
kill @s

