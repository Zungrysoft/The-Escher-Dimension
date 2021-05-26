#Build the pedestal
setblock ~-5 ~ ~-5 minecraft:structure_block{name: "tid:soulsand/enchantment_pedestal", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-5 ~1 ~-5 minecraft:redstone_block
