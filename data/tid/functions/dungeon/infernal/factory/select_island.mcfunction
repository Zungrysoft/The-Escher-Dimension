#Pick a structure from this list
setblock ~5 ~ ~5 minecraft:structure_block{name: "tid:infernal/factory/island_1", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~5 ~ ~5 minecraft:structure_block{name: "tid:infernal/factory/island_2", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~5 ~1 ~5 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~9 ~140 ~9 blue_wool

#We're done here
kill @s
