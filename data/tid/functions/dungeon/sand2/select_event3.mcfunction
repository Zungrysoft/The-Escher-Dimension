#Swap out the structure block
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand2/event3_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Build the art
execute positioned ~4 ~3 ~4 run function tid:misc/sand2_copy_art

#Add to counter
scoreboard players add art_templates_sand2 value 1
