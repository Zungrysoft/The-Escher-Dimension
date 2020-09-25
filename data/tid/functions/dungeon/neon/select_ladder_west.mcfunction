#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/ladder_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area on the map
fill ~ 255 ~ ~2 255 ~1 minecraft:green_terracotta replace minecraft:purpur_block

#We're done here
kill @s