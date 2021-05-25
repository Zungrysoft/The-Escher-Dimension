setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_s6", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

execute positioned ~ ~2 ~-1 run function tid:misc/nature_copy_art

scoreboard players add art_templates_nature value 1
