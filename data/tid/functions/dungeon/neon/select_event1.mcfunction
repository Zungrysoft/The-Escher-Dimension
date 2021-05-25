#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Build the art
execute positioned ~1 ~3 ~6 run function tid:misc/neon_copy_art

#Add to counter
scoreboard players add art_templates_neon value 1
