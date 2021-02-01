#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/core", posX: -2, posY: -4, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:air
setblock ~ ~1 ~ minecraft:redstone_block

#We're done here
kill @s
