#Generate the pillar base
setblock ~-3 ~-4 ~-3 minecraft:structure_block{name: "tid:station/pillar_base", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~-3 ~-3 ~-3 minecraft:redstone_block
fill ~-3 ~124 ~-3 ~3 ~131 ~3 minecraft:blue_wool

#Set the success value
scoreboard players set temp value 1