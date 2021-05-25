#Build the pedestal
setblock ~-3 ~ ~-3 minecraft:structure_block{name: "tid:soulsand/art_pedestal", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-3 ~1 ~-3 minecraft:redstone_block

#Build the art
execute positioned ~-1 ~1 ~-1 run function tid:misc/soulsand_copy_art

#Count it
scoreboard players add art_templates_soulsand value 1
